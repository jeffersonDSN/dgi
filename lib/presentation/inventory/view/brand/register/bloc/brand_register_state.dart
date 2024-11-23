part of 'brand_register_bloc.dart';

@freezed
class BrandRegisterState with _$BrandRegisterState {
  const factory BrandRegisterState.empty() = BrandRegisterStateEmpty;
  const factory BrandRegisterState.loading() = BrandRegisterStateLoading;
  const factory BrandRegisterState.loaded({
    required CrudType type,
    required Brand brand,
  }) = BrandRegisterStateLoaded;
}

extension OnBrandRegisterState on BrandRegisterState {
  BrandRegisterStateLoaded get asLoaded => this as BrandRegisterStateLoaded;
}
