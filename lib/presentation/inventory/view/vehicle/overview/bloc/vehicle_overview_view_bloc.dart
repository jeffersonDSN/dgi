import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'vehicle_overview_view_bloc.freezed.dart';
part 'vehicle_overview_view_event.dart';
part 'vehicle_overview_view_state.dart';

class VehicleOverviewViewBloc
    extends Bloc<VehicleOverviewViewEvent, VehicleOverviewViewState> {
  VehicleOverviewViewBloc({
    required CRUDController<Vehicle> controller,
    required CRUDController<Brand> controllerBrand,
  }) : super(const VehicleOverviewViewState.empty()) {
    on<VehicleOverviewViewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const VehicleOverviewViewState.loading());

          var result = await Future.wait([
            controller.getAll(),
            controllerBrand.getAll(),
          ]);

          emit(
            VehicleOverviewViewState.loaded(
              vehicles: result[0] as List<Vehicle>,
              brands: result[1] as List<Brand>,
            ),
          );
        },
      );
    });
  }
}
