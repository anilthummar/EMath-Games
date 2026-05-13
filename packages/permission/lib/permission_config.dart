/// Configuration for permission handling.
class PermissionConfig {
  const PermissionConfig({this.onLog});

  final void Function(String message)? onLog;
}
