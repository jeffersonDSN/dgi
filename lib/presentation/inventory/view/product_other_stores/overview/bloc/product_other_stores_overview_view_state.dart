part of 'product_other_stores_overview_view_bloc.dart';

@freezed
class ProductOtherStoresOverviewViewState
    with _$ProductOtherStoresOverviewViewState {
  const factory ProductOtherStoresOverviewViewState.empty({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
  }) = ProductOtherStoresOverviewViewStateEmpty;
  const factory ProductOtherStoresOverviewViewState.loading({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
  }) = ProductOtherStoresOverviewViewStateLoading;
  const factory ProductOtherStoresOverviewViewState.loaded({
    @Default(SearchCriteriaType.name) SearchCriteriaType searchCriteria,
    required List<ProductOtherStore> products,
    required List<ProductOtherStore> filteredProducts,
  }) = ProductOtherStoresOverviewViewStateLoaded;
}

extension OnProductOtherStoresOverviewViewState
    on ProductOtherStoresOverviewViewState {
  ProductOtherStoresOverviewViewStateEmpty get asEmpty =>
      this as ProductOtherStoresOverviewViewStateEmpty;
  ProductOtherStoresOverviewViewStateLoading get asLoading =>
      this as ProductOtherStoresOverviewViewStateLoading;
  ProductOtherStoresOverviewViewStateLoaded get asLoaded =>
      this as ProductOtherStoresOverviewViewStateLoaded;
}
