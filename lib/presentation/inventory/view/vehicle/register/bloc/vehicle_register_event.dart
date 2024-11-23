part of 'vehicle_register_bloc.dart';

@freezed
class VehicleRegisterEvent with _$VehicleRegisterEvent {
  const factory VehicleRegisterEvent.load({
    required CrudType type,
  }) = VehicleRegisterEventLoad;

  const factory VehicleRegisterEvent.changeName({
    required String name,
  }) = VehicleRegisterEventChangeName;

  const factory VehicleRegisterEvent.changeModel({
    required String model,
  }) = VehicleRegisterEventChangeModel;

  const factory VehicleRegisterEvent.changeFromYear({
    required String fromYear,
  }) = VehicleRegisterEventChangeFromYear;

  const factory VehicleRegisterEvent.changeToYear({
    required String toYear,
  }) = VehicleRegisterEventChangeToYear;

  const factory VehicleRegisterEvent.changeBrand({
    required String brand,
  }) = VehicleRegisterEventChangeBrand;

  const factory VehicleRegisterEvent.save({
    required VoidCallback callback,
  }) = VehicleRegisterEventSave;
}
