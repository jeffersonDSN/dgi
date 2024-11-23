import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_register_bloc.freezed.dart';
part 'brand_register_event.dart';
part 'brand_register_state.dart';

class BrandRegisterBloc extends Bloc<BrandRegisterEvent, BrandRegisterState> {
  BrandRegisterBloc({
    required CRUDController<Brand> controller,
  }) : super(const BrandRegisterState.empty()) {
    on<BrandRegisterEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(
            const BrandRegisterState.loading(),
          );

          var brand = await type.when(
            create: () async {
              return const Brand();
            },
            update: (id) async {
              return controller.getById(id);
            },
          );

          emit(
            BrandRegisterState.loaded(
              type: type,
              brand: brand,
            ),
          );
        },
        changeName: (name) async {
          emit(
            state.asLoaded.copyWith(
              brand: state.asLoaded.brand.copyWith(
                name: name,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () async {
              return controller.create(
                state.asLoaded.brand,
              );
            },
            update: (id) async {
              return controller.update(
                state.asLoaded.brand,
              );
            },
          );

          callback.call();
        },
      );
    });
  }
}
