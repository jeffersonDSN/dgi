import 'package:flutter/material.dart';

class DGIiResponsiveWidget extends StatelessWidget {
  final Widget? widgetMobile;
  final Widget? widgetTablet;

  const DGIiResponsiveWidget({
    super.key,
    this.widgetMobile,
    this.widgetTablet,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

        if (isMobile) {
          return widgetMobile ?? const SizedBox.expand();
        } else {
          return widgetTablet ?? const SizedBox.expand();
        }
      },
    );
  }
}
