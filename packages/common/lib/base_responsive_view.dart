import 'package:flutter/material.dart';

import 'context_extension.dart';

/// Abstract base for responsive views (mobile/tablet/desktop).
abstract class BaseResponsiveView extends StatelessWidget {
  const BaseResponsiveView({super.key});

  Widget buildMobileWidget(BuildContext context);
  Widget buildTabletWidget(BuildContext context);
  Widget buildDesktopWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (context.isMobileView) {
            return buildMobileWidget(context);
          } else if (context.isTabletView) {
            return buildTabletWidget(context);
          } else if (context.isWebView) {
            return buildDesktopWidget(context);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
