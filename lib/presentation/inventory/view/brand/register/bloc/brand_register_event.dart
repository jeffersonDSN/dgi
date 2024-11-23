part of 'brand_register_bloc.dart';

@freezed
class BrandRegisterEvent with _$BrandRegisterEvent {
  const factory BrandRegisterEvent.load({
    required CrudType type,
  }) = BrandRegisterEventLoad;

  const factory BrandRegisterEvent.changeName({
    required String name,
  }) = BrandRegisterEventChangeName;

  const factory BrandRegisterEvent.save({
    required VoidCallback callback,
  }) = BrandRegisterEventSave;
}
