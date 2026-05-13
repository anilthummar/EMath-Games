import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// Scroll behavior that enables touch, mouse, and trackpad dragging.
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
