import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/infrastructure/firebase/brand_firestore_repository.dart';
import 'package:dgi/infrastructure/firebase/product_firestore_repository.dart';
import 'package:dgi/infrastructure/firebase/vehicle_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/product/overview/bloc/product_overview_view_bloc.dart';
import 'package:dgi/presentation/inventory/view/product/overview/view/product_overview_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/product/overview/view/product_overview_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOverview extends IView {
  const ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => ProductOverviewViewBloc(
        controller: CRUDController<Product>(
          repository: ProductFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        controllerBrand: CRUDController<Brand>(
          repository: BrandFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        controllerVehicle: CRUDController<Vehicle>(
          repository: VehicleFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const DGIiResponsiveWidget(
        widgetMobile: ProductOverviewViewMobile(),
        widgetTablet: ProductOverviewViewTablet(),
      ),
    );
  }
}
