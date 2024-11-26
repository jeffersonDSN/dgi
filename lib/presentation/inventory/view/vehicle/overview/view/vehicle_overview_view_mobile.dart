import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/bloc/vehicle_overview_view_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleOverviewViewMobile extends IView {
  const VehicleOverviewViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehicleOverviewViewBloc>(context);

    bloc.add(
      const VehicleOverviewViewEvent.load(),
    );

    return BlocBuilder<VehicleOverviewViewBloc, VehicleOverviewViewState>(
      bloc: bloc,
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (
                  vehicles,
                  brands,
                ) {
                  return ListView.separated(
                    itemCount: vehicles.length,
                    itemBuilder: (context, index) {
                      var vehicle = vehicles[index];

                      return ListTile(
                        title: Text(vehicle.name),
                        subtitle: Text(
                          vehicle.brand != ''
                              ? brands
                                  .firstWhere(
                                      (brand) => brand.id == vehicle.brand)
                                  .name
                              : 'N/A',
                        ),
                        onTap: () {
                          appBloc(context).add(
                            AppEvent.changeView(
                              mod: ModInventory(
                                inventoryFeatures: InventoryFeatures.vehicle(
                                  type: ViewType.update(id: vehicle.id),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
