import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/controllers/product_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/infrastructure/firebase/brand_firestore_repository.dart';
import 'package:dgi/infrastructure/firebase/image_firebase_storage.dart';
import 'package:dgi/infrastructure/firebase/product_firestore_repository.dart';
import 'package:dgi/infrastructure/firebase/vehicle_firestore_repository.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/inventory/view/product/register/bloc/product_register_bloc.dart';
import 'package:dgi/presentation/inventory/view/product/register/view/product_register_view_mobile.dart';
import 'package:dgi/presentation/inventory/view/product/register/view/product_register_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductRegister extends IView {
  final CrudType? type;

  const ProductRegister({
    super.key,
    this.type,
  });

  @override
  Widget build(BuildContext context) {
    var tenantId = appBloc(context).state.asLogged.user.tenant;

    return BlocProvider<ProductRegisterBloc>(
        create: (context) => ProductRegisterBloc(
              controller: ProductController(
                repository: ProductFireStoreRepository(tenantId: tenantId),
                imageRepository: ImageFirebaseStorage(),
              ),
              controllerVehicle: CRUDController<Vehicle>(
                repository: VehicleFireStoreRepository(tenantId: tenantId),
              ),
              controllerBrand: CRUDController<Brand>(
                repository: BrandFireStoreRepository(tenantId: tenantId),
              ),
            ),
        child: DGIiResponsiveWidget(
          widgetMobile: ProductRegisterViewMobile(
            type: type ?? const CrudType.create(),
          ),
          widgetTablet: ProductRegisterViewTablet(
            type: type ?? const CrudType.create(),
          ),
        ));
  }
}
