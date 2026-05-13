import 'dart:convert';

import 'package:network/network.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sentry_logging/sentry_logging.dart';

import 'sentry_config.dart';

/// Service for Sentry crash reporting and API tracing.
class SentryService {
  SentryService._();

  static final SentryService instance = SentryService._();

  late ISentrySpan _span;
  late ISentrySpan _transaction;
  SentryConfig? _config;

  Future<void> init(SentryConfig config) async {
    _config = config;
    await SentryFlutter.init(
      (SentryFlutterOptions options) {
        options
          ..dsn = config.dsn
          ..tracesSampleRate = config.tracesSampleRate
          ..attachScreenshot = config.attachScreenshot
          ..addIntegration(LoggingIntegration());
      },
    );
  }

  void startAPITransaction({required String apiName}) {
    _transaction = Sentry.startTransaction(
      apiName,
      'request',
      bindToScope: true,
    );
    _transaction.setTag('user_id', _config?.userId ?? '');
    _span = _transaction.startChild('dio', description: 'desc');
  }

  Future<void> logSuccessAPITransaction<T>(ResponseHandler<T> handler) async {
    const key = 'response';
    if (handler.isSuccess()) {
      _transaction.setData(key, handler.getSuccessInstance()?.response);
    } else {
      _transaction.setData(key, jsonEncode(handler.getFailureInstance()?.error));
    }
    await _transaction.finish(status: const SpanStatus.ok());
    _span.status = const SpanStatus.ok();
  }

  Future<void> logErrorAPITransaction(Exception e) async {
    _span
      ..throwable = e
      ..status = const SpanStatus.internalError();
  }

  Future<void> finishAPITransaction() async {
    await _span.finish();
    await _transaction.finish();
  }

  Future<void> configScope({
    String? sentryUserId,
    String? sentryUserEmail,
  }) async {
    Sentry.configureScope(
      (Scope scope) async => scope.setUser(
        SentryUser(id: sentryUserId, email: sentryUserEmail),
      ),
    );
  }

  Future<void> captureEvent(
    String event, {
    String? type,
    String tagKey = 'base_structure-tag',
    String tagValue = 'base_structure-event',
  }) async {
    await Sentry.captureEvent(
      SentryEvent(
        tags: <String, String>{tagKey: tagValue},
        message: SentryMessage(event),
        level: SentryLevel.info,
      ),
    );
  }

  Future<void> addBreadcrumb(Breadcrumb crumb, {Hint? hint}) async =>
      Sentry.addBreadcrumb(crumb, hint: hint);

  Future<void> captureException(
    dynamic exception, {
    dynamic stackTrace,
    String tagKey = 'base_structure-tag',
    String tagValue = 'base_structure-exception',
  }) async {
    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
      withScope: (Scope scope) async {
        await scope.setTag(tagKey, tagValue);
        scope.level = SentryLevel.warning;
      },
    );
  }
}
