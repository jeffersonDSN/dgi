part of 'product_register_bloc.dart';

@freezed
class ProductRegisterState with _$ProductRegisterState {
  const factory ProductRegisterState.empty() = ProductRegisterStateEmpty;
  const factory ProductRegisterState.loading() = ProductRegisterStateLoading;
  const factory ProductRegisterState.loaded({
    required CrudType type,
    required Product product,
    required List<Vehicle> vehicles,
    required List<Brand> brands,
  }) = ProductRegisterStateLoaded;
}

extension OnProductRegisterState on ProductRegisterState {
  ProductRegisterStateLoaded get asLoaded => this as ProductRegisterStateLoaded;
}
