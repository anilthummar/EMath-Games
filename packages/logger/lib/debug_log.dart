import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_html/html.dart' show window;

/// Debug logging utility. Call [init] before use.
class DebugLog {
  DebugLog._();

  static final DebugLog instance = DebugLog._();

  Logger? _logger;

  Future<void> _saveLogToLocalStorage(String log) async {
    final currentLogs = window.localStorage['logs'] ?? '';
    window.localStorage['logs'] = '$currentLogs$log\n';
  }

  Future<File> _getDirectoryForLogRecord() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/logger.txt');
  }

  Future<List<LogOutput>> _writeLogInFile() async {
    final file = await _getDirectoryForLogRecord();
    return [FileOutput(file: file), ConsoleOutput()];
  }

  Future<void> init() async {
    _logger ??= Logger(
      filter: DevelopmentFilter(),
      printer: PrettyPrinter(
        printEmojis: false,
        dateTimeFormat: DateTimeFormat.dateAndTime,
      ),
      output: !kIsWeb
          ? MultiOutput(await _writeLogInFile())
          : MultiOutput(<LogOutput?>[ConsoleOutput(), WebOutput()]),
    );
  }

  void d(dynamic message) {
    if (kDebugMode) _logger?.d(message);
  }

  void t(dynamic message) {
    if (kDebugMode) _logger?.t(message);
  }

  void e(dynamic message, [dynamic errors]) {
    if (kDebugMode) _logger?.e(message, error: errors);
  }

  void w(dynamic message) {
    if (kDebugMode) _logger?.w(message);
  }

  void i(dynamic message) {
    if (kDebugMode) _logger?.i(message);
  }
}

class WebOutput extends LogOutput {
  @override
  Future<void> output(OutputEvent event) async {
    final logMessage =
        '============================================================================='
        '\n${event.level.name}: ${event.origin.message}'
        '\n=============================================================================';
    await DebugLog.instance._saveLogToLocalStorage(logMessage);
  }
}
