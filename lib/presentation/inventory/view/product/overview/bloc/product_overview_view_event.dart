part of 'product_overview_view_bloc.dart';

@freezed
class ProductOverviewViewEvent with _$ProductOverviewViewEvent {
  const factory ProductOverviewViewEvent.load() = ProductOverviewViewEventLoad;

  const factory ProductOverviewViewEvent.changeSearchCriteria({
    required SearchCriteriaType searchCriteria,
  }) = ProductOverviewViewEventChangeSearchCriteria;

  const factory ProductOverviewViewEvent.search({
    required String searchText,
  }) = ProductOverviewViewEventSearch;
}
