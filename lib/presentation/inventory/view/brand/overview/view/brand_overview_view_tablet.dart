import 'package:data_table_2/data_table_2.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/bloc/brand_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandOverviewViewTablet extends IView {
  const BrandOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<BrandOverviewViewBloc>(context);

    bloc.add(
      const BrandOverviewViewEvent.load(),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.size16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FilledButton.icon(
                icon: const Icon(Icons.add),
                label: Text(context.tr.newBrand),
                onPressed: () {
                  appBloc(context).add(
                    const AppEvent.changeView(
                      mod: ModInventory(
                        inventoryFeatures: InventoryFeatures.brand(
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
              child: BlocBuilder<BrandOverviewViewBloc, BrandOverviewViewState>(
                bloc: bloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (brands) => DataTable2(
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
                        DataColumn2(
                          fixedWidth: 68,
                          numeric: true,
                          label: Text(context.tr.action),
                        ),
                      ],
                      rows: brands.map((brand) {
                        return DataRow(
                          cells: [
                            DataCell(Text(brand.name)),
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
                                                InventoryFeatures.brand(
                                              type: ViewType.update(
                                                id: brand.id,
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
