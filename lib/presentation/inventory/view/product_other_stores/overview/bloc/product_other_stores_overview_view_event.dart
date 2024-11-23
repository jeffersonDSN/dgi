part of 'product_other_stores_overview_view_bloc.dart';

@freezed
class ProductOtherStoresOverviewViewEvent
    with _$ProductOtherStoresOverviewViewEvent {
  const factory ProductOtherStoresOverviewViewEvent.load() =
      ProductOtherStoresOverviewViewEventLoad;

  const factory ProductOtherStoresOverviewViewEvent.changeSearchCriteria({
    required SearchCriteriaType searchCriteria,
  }) = ProductOtherStoresOverviewViewEventChangeSearchCriteria;

  const factory ProductOtherStoresOverviewViewEvent.search({
    required String searchText,
  }) = ProductOtherStoresOverviewViewEventSearch;
}
