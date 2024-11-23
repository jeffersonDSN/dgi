part of 'vehicle_register_bloc.dart';

@freezed
class VehicleRegisterState with _$VehicleRegisterState {
  const factory VehicleRegisterState.empty() = VehicleRegisterStateEmpty;
  const factory VehicleRegisterState.loading() = VehicleRegisterStateLoading;
  const factory VehicleRegisterState.loaded({
    required CrudType type,
    required Vehicle vehicle,
    required List<Brand> brands,
  }) = VehicleRegisterStateLoaded;
}

extension OnVehicleRegisterState on VehicleRegisterState {
  VehicleRegisterStateLoaded get asLoaded => this as VehicleRegisterStateLoaded;
}
