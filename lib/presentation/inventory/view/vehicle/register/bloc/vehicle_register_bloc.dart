import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_register_bloc.freezed.dart';
part 'vehicle_register_event.dart';
part 'vehicle_register_state.dart';

class VehicleRegisterBloc
    extends Bloc<VehicleRegisterEvent, VehicleRegisterState> {
  VehicleRegisterBloc({
    required CRUDController<Vehicle> controller,
    required CRUDController<Brand> controllerBrand,
  }) : super(const VehicleRegisterState.empty()) {
    on<VehicleRegisterEvent>((event, emit) async {
      await event.when(
        load: (type) async {
          emit(
            const VehicleRegisterState.loading(),
          );

          var result = await Future.wait([
            type.when(
              create: () async {
                return const Vehicle();
              },
              update: (id) async {
                return controller.getById(id);
              },
            ),
            controllerBrand.getAll(),
          ]);

          emit(
            VehicleRegisterState.loaded(
              type: type,
              vehicle: result[0] as Vehicle,
              brands: result[1] as List<Brand>,
            ),
          );
        },
        changeName: (name) async {
          emit(
            state.asLoaded.copyWith(
              vehicle: state.asLoaded.vehicle.copyWith(
                name: name,
              ),
            ),
          );
        },
        changeModel: (model) {
          emit(
            state.asLoaded.copyWith(
              vehicle: state.asLoaded.vehicle.copyWith(
                model: model,
              ),
            ),
          );
        },
        changeFromYear: (fromYear) {
          emit(
            state.asLoaded.copyWith(
              vehicle: state.asLoaded.vehicle.copyWith(
                fromYear: fromYear,
              ),
            ),
          );
        },
        changeToYear: (toYear) {
          emit(
            state.asLoaded.copyWith(
              vehicle: state.asLoaded.vehicle.copyWith(
                toYear: toYear,
              ),
            ),
          );
        },
        changeBrand: (brand) {
          emit(
            state.asLoaded.copyWith(
              vehicle: state.asLoaded.vehicle.copyWith(
                brand: brand,
              ),
            ),
          );
        },
        save: (callback) async {
          await state.asLoaded.type.when(
            create: () async {
              return controller.create(
                state.asLoaded.vehicle,
              );
            },
            update: (id) async {
              return controller.update(
                state.asLoaded.vehicle,
              );
            },
          );

          callback.call();
        },
      );
    });
  }
}
