part of 'product_overview_view_bloc.dart';

@freezed
class ProductOverviewViewState with _$ProductOverviewViewState {
  const factory ProductOverviewViewState.empty({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
  }) = ProductOverviewViewStateEmpty;
  const factory ProductOverviewViewState.loading({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
  }) = ProductOverviewViewStateLoading;
  const factory ProductOverviewViewState.loaded({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
    required List<Product> products,
    required List<Product> filteredProducts,
    required List<Brand> brands,
    required List<Vehicle> vehicles,
  }) = ProductOverviewViewStateLoaded;
}

extension OnProductOverviewViewState on ProductOverviewViewState {
  ProductOverviewViewStateEmpty get asEmpty =>
      this as ProductOverviewViewStateEmpty;
  ProductOverviewViewStateLoading get asLoading =>
      this as ProductOverviewViewStateLoading;
  ProductOverviewViewStateLoaded get asLoaded =>
      this as ProductOverviewViewStateLoaded;
}
