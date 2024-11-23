part of 'product_register_bloc.dart';

@freezed
class ProductRegisterEvent with _$ProductRegisterEvent {
  const factory ProductRegisterEvent.load({
    required CrudType type,
  }) = ProductRegisterEventLoad;

  const factory ProductRegisterEvent.changeImage({
    required Uint8List? image,
  }) = ProductRegisterEventChangeImage;

  const factory ProductRegisterEvent.changeName({
    required String name,
  }) = ProductRegisterEventChangeName;

  const factory ProductRegisterEvent.changeNumber({
    required String number,
  }) = ProductRegisterEventChangeNumber;

  const factory ProductRegisterEvent.changeVehicle({
    required String vehicle,
  }) = ProductRegisterEventChangeVehicle;

  const factory ProductRegisterEvent.changeBrand({
    required String brand,
  }) = ProductRegisterEventChangeBrand;

  const factory ProductRegisterEvent.changeQuantity({
    required int quantity,
  }) = ProductRegisterEventChangeQuantity;

  const factory ProductRegisterEvent.changePrice({
    required double price,
  }) = ProductRegisterEventChangePrice;

  const factory ProductRegisterEvent.save({
    required VoidCallback callback,
  }) = ProductRegisterEventSave;
}
