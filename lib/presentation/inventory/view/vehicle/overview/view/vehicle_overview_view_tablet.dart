import 'package:data_table_2/data_table_2.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/bloc/vehicle_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleOverviewViewTablet extends IView {
  const VehicleOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehicleOverviewViewBloc>(context);

    bloc.add(
      const VehicleOverviewViewEvent.load(),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.size8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FilledButton.icon(
                icon: const Icon(Icons.add),
                label: Text(context.tr.newVehicle),
                onPressed: () {
                  appBloc(context).add(
                    const AppEvent.changeView(
                      mod: ModInventory(
                        inventoryFeatures: InventoryFeatures.vehicle(
                          type: ViewType.create(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(
                Sizes.size16,
              ),
              child: BlocBuilder<VehicleOverviewViewBloc,
                  VehicleOverviewViewState>(
                bloc: bloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (vehicles, brands) => DataTable2(
                      empty: const Center(
                        child: Text(
                          '',
                        ),
                      ),
                      columns: [
                        DataColumn2(
                          size: ColumnSize.L,
                          label: Text(context.tr.name),
                        ),
                        DataColumn(
                          label: Text(context.tr.model),
                        ),
                        DataColumn(
                          label: Text(context.tr.fromYear),
                        ),
                        DataColumn(
                          label: Text(context.tr.toYear),
                        ),
                        DataColumn(
                          label: Text(context.tr.brand),
                        ),
                        DataColumn2(
                          fixedWidth: 68,
                          numeric: true,
                          label: Text(context.tr.action),
                        ),
                      ],
                      rows: vehicles.map((vehicle) {
                        return DataRow(
                          cells: [
                            DataCell(Text(vehicle.name)),
                            DataCell(Text(vehicle.model)),
                            DataCell(Text(vehicle.fromYear)),
                            DataCell(Text(vehicle.toYear)),
                            DataCell(
                              Text(
                                vehicle.brand != ''
                                    ? brands.firstWhere((brand) {
                                        return brand.id == vehicle.brand;
                                      }).name
                                    : '',
                              ),
                            ),
                            DataCell(
                              PopupMenuButton(
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        const Icon(
                                          size: 20,
                                          color: AppColor.orange,
                                          Icons.edit_outlined,
                                        ),
                                        gapWidth8,
                                        Text(context.tr.edit),
                                      ],
                                    ),
                                    onTap: () {
                                      appBloc(context).add(
                                        AppEvent.changeView(
                                          mod: ModInventory(
                                            inventoryFeatures:
                                                InventoryFeatures.vehicle(
                                              type: ViewType.update(
                                                id: vehicle.id,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Row(
                                      children: [
                                        const Icon(
                                          size: 20,
                                          color: AppColor.red,
                                          Icons.delete_outline,
                                        ),
                                        gapWidth8,
                                        Text(context.tr.remove),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
