/// Enums for force update and maintenance flow.
enum UnderMaintenanceType {
  /// No maintenance.
  none(0),
  /// Text-based maintenance message.
  text(1),
  /// Image-based maintenance message.
  image(2);

  const UnderMaintenanceType(this.type);

  /// Priority value for maintenance type.
  final int type;
}

/// Type of update or maintenance required.
enum UpdateMaintenanceType {
  /// App is under maintenance.
  maintenance,
  /// No update or maintenance required.
  none,
  /// Force update required.
  force,
  /// Optional update available.
  optional,
}
