part of 'brand_overview_view_bloc.dart';

@freezed
class BrandOverviewViewEvent with _$BrandOverviewViewEvent {
  const factory BrandOverviewViewEvent.load() = BrandOverviewViewEventLoad;
}
