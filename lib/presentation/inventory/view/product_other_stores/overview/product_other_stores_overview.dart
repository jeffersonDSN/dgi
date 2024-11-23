import 'package:dgi/domain/controllers/product_other_stores_controller.dart';
import 'package:dgi/infrastructure/firebase/product_other_stores_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/bloc/product_other_stores_overview_view_bloc.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/view/product_other_stores_overview_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/view/product_other_stores_overview_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOtherStoresOverview extends IView {
  const ProductOtherStoresOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => ProductOtherStoresOverviewViewBloc(
        controller: ProductOtherStoresController(
          repository: ProductOtherStoresFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const DGIiResponsiveWidget(
        widgetMobile: ProductOtherStoresOverviewViewMobile(),
        widgetTablet: ProductOtherStoresOverviewViewTablet(),
      ),
    );
  }
}
