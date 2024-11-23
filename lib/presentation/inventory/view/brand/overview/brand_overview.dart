import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/infrastructure/firestore/brand_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/bloc/brand_overview_view_bloc.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/view/brand_overview_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/view/brand_overview_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandOverview extends IView {
  const BrandOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrandOverviewViewBloc(
        controller: CRUDController<Brand>(
          repository: BrandFireStoreRepository(
            tenantId: appBloc(context).state.asLogged.user.tenant,
          ),
        ),
      ),
      child: const DGIiResponsiveWidget(
        widgetMobile: BrandOverviewViewMobile(),
        widgetTablet: BrandOverviewViewTablet(),
      ),
    );
  }
}
