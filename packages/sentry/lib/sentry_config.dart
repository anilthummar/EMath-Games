/// Configuration for Sentry initialization.
class SentryConfig {
  const SentryConfig({
    required this.dsn,
    this.tracesSampleRate = 1.0,
    this.attachScreenshot = true,
    this.userId,
    this.userEmail,
  });

  final String dsn;
  final double tracesSampleRate;
  final bool attachScreenshot;
  final String? userId;
  final String? userEmail;
}
