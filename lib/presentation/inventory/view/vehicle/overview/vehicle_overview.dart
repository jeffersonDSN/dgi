import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/infrastructure/firestore/brand_firestore_repository.dart';
import 'package:dgi/infrastructure/firestore/vehicle_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/bloc/vehicle_overview_view_bloc.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/view/vehicle_overview_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/view/vehicle_overview_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleOverview extends IView {
  const VehicleOverview({super.key});

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider(
      create: (context) => VehicleOverviewViewBloc(
        controller: CRUDController<Vehicle>(
          repository: VehicleFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
        controllerBrand: CRUDController<Brand>(
          repository: BrandFireStoreRepository(
            tenantId: tenantId,
          ),
        ),
      ),
      child: const DGIiResponsiveWidget(
        widgetMobile: VehicleOverviewViewMobile(),
        widgetTablet: VehicleOverviewViewTablet(),
      ),
    );
  }
}
