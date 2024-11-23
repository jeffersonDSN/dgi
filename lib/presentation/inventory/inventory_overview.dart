import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/inventory_overview_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/inventory_overview_view_tablet.dart';
import 'package:flutter/material.dart';

class InventoryOverview extends IView {
  const InventoryOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return const DGIiResponsiveWidget(
      widgetMobile: InventoryOverviewViewMobile(),
      widgetTablet: InventoryOverviewViewTablet(),
    );
  }
}
