part of 'brand_overview_view_bloc.dart';

@freezed
class BrandOverviewViewState with _$BrandOverviewViewState {
  const factory BrandOverviewViewState.empty() = BrandOverviewViewStateEmpty;
  const factory BrandOverviewViewState.loading() =
      BrandOverviewViewStateLoading;
  const factory BrandOverviewViewState.loaded({
    required List<Brand> brands,
  }) = BrandOverviewViewStateLoaded;
}

extension OnBrandOverviewViewState on BrandOverviewViewState {
  BrandOverviewViewStateEmpty get asEmpty =>
      this as BrandOverviewViewStateEmpty;
  BrandOverviewViewStateLoading get asLoading =>
      this as BrandOverviewViewStateLoading;
  BrandOverviewViewStateLoaded get asLoaded =>
      this as BrandOverviewViewStateLoaded;
}
