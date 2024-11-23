import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/lading/view/lading_view_mobile.dart';
import 'package:dgi/presentation/lading/view/lading_view_tablet.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return DGIiResponsiveWidget(
      widgetMobile: LadingViewMobile(
        key: GlobalKey(),
      ),
      widgetTablet: LandingViewTablet(
        key: GlobalKey(),
      ),
    );
  }
}
