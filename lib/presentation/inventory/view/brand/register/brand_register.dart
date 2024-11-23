import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/infrastructure/firestore/brand_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/brand/register/bloc/brand_register_bloc.dart';
import 'package:dgi/presentation/inventory/view/brand/register/view/brand_register_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/brand/register/view/brand_register_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandRegister extends IView {
  final CrudType? type;

  const BrandRegister({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BrandRegisterBloc>(
      create: (context) => BrandRegisterBloc(
        controller: CRUDController<Brand>(
          repository: BrandFireStoreRepository(
              tenantId: appBloc(context).state.asLogged.user.tenant),
        ),
      ),
      child: DGIiResponsiveWidget(
        widgetMobile: BrandRegisterViewMobile(
          type: type ?? const CrudType.create(),
        ),
        widgetTablet: BrandRegisterViewTablet(
          type: type ?? const CrudType.create(),
        ),
      ),
    );
  }
}
