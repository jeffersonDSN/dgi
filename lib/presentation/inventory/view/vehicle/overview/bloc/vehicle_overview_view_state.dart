part of 'vehicle_overview_view_bloc.dart';

@freezed
class VehicleOverviewViewState with _$VehicleOverviewViewState {
  const factory VehicleOverviewViewState.empty() =
      VehicleOverviewViewStateEmpty;
  const factory VehicleOverviewViewState.loading() =
      VehicleOverviewViewStateLoading;
  const factory VehicleOverviewViewState.loaded({
    required List<Vehicle> vehicles,
    required List<Brand> brands,
  }) = VehicleOverviewViewStateLoaded;
}

extension OnVehicleOverviewViewState on VehicleOverviewViewState {
  VehicleOverviewViewStateEmpty get asEmpty =>
      this as VehicleOverviewViewStateEmpty;
  VehicleOverviewViewStateLoading get asLoading =>
      this as VehicleOverviewViewStateLoading;
  VehicleOverviewViewStateLoaded get asLoaded =>
      this as VehicleOverviewViewStateLoaded;
}
