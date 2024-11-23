import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/home/overview/view/home_overview_view_mobile.dart';
import 'package:dgi/presentation/home/overview/view/home_overview_view_tablet.dart';
import 'package:flutter/material.dart';

class HomeOverview extends IView {
  const HomeOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return const DGIiResponsiveWidget(
      widgetMobile: HomeOverviewViewMobile(),
      widgetTablet: HomeOverviewViewTablet(),
    );
  }
}
