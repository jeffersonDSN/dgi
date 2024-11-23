import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/controllers/product_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/domain/repositories/abs_i_image_repository.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_register_bloc.freezed.dart';
part 'product_register_event.dart';
part 'product_register_state.dart';

class ProductRegisterBloc
    extends Bloc<ProductRegisterEvent, ProductRegisterState> {
  ProductRegisterBloc({
    required ProductController controller,
    required CRUDController<Vehicle> controllerVehicle,
    required CRUDController<Brand> controllerBrand,
  }) : super(const ProductRegisterState.empty()) {
    on<ProductRegisterEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(
            const ProductRegisterState.loading(),
          );

          var result = await Future.wait([
            type.when(
              create: () async {
                return const Product();
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            controllerBrand.getAll(),
            controllerVehicle.getAll(),
          ]);

          emit(
            ProductRegisterState.loaded(
              type: type,
              product: result[0] as Product,
              brands: result[1] as List<Brand>,
              vehicles: result[2] as List<Vehicle>,
            ),
          );
        },
        changeImage: (image) {
          emit(
            state.asLoaded.copyWith(
              image: image,
            ),
          );
        },
        changeName: (name) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                name: name,
              ),
            ),
          );
        },
        changeNumber: (number) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                number: number,
              ),
            ),
          );
        },
        changeBrand: (brand) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                brand: brand,
                vehicle: '',
              ),
            ),
          );
        },
        changeVehicle: (vehicle) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                vehicle: vehicle,
              ),
            ),
          );
        },
        changeQuantity: (quantity) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                quantity: quantity,
              ),
            ),
          );
        },
        changePrice: (price) {
          emit(
            state.asLoaded.copyWith(
              product: state.asLoaded.product.copyWith(
                price: price,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () async {
              String image = '';

              if (state.asLoaded.image != null) {
                image = await controller.uploadUint8List(state.asLoaded.image!);
              }

              return controller.create(
                state.asLoaded.product.copyWith(
                  image: image,
                ),
              );
            },
            update: (id) async {
              String image = '';

              if (state.asLoaded.image != null) {
                image = await controller.uploadUint8List(state.asLoaded.image!);
              }

              return controller.update(
                state.asLoaded.product.copyWith(
                  image: image,
                ),
              );
            },
          );

          callback.call();
        },
      );
    });
  }
}
