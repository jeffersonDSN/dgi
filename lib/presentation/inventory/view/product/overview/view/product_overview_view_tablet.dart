import 'package:data_table_2/data_table_2.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:dgi/presentation/inventory/view/product/overview/bloc/product_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOverviewViewTablet extends IView {
  const ProductOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProductOverviewViewBloc>(context);

    bloc.add(
      const ProductOverviewViewEvent.load(),
    );

    return BlocBuilder<ProductOverviewViewBloc, ProductOverviewViewState>(
      bloc: bloc,
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                Sizes.size0,
                Sizes.size8,
                Sizes.size8,
                Sizes.size8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: Row(
                        children: [
                          gapWidth16,
                          const Icon(
                            Icons.search,
                            color: AppColor.primaryColorSwatch,
                          ),
                          gapWidth16,
                          DropdownButton<SearchCriteriaType>(
                            value: state.searchCriteria,
                            underline: const SizedBox.shrink(),
                            items: SearchCriteriaType.values.map(
                              (searchCriteria) {
                                return DropdownMenuItem(
                                  value: searchCriteria,
                                  child: Text(
                                    searchCriteria.name(
                                      context,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (value) {
                              if (value != null) {
                                bloc.add(
                                  ProductOverviewViewEvent.changeSearchCriteria(
                                    searchCriteria: value,
                                  ),
                                );
                              }
                            },
                          ),
                          gapWidth8,
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: context.tr.enterYourSearch,
                              ),
                              onChanged: (value) {
                                bloc.add(
                                  ProductOverviewViewEvent.search(
                                    searchText: value,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  gapWidth40,
                  FilledButton.icon(
                    icon: const Icon(Icons.add),
                    label: Text(context.tr.newProduct),
                    onPressed: () {
                      appBloc(context).add(
                        const AppEvent.changeView(
                          mod: ModInventory(
                            inventoryFeatures: InventoryFeatures.product(
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
                  padding: const EdgeInsets.all(16),
                  child: state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (
                      searchCriteria,
                      products,
                      filteredProducts,
                      brands,
                      vehicles,
                    ) {
                      return DataTable2(
                        empty: const Center(
                          child: Text(''),
                        ),
                        columns: [
                          DataColumn2(
                            size: ColumnSize.L,
                            label: Text(context.tr.name),
                          ),
                          DataColumn(
                            label: Text(context.tr.number),
                          ),
                          DataColumn(
                            label: Text(context.tr.vehicle),
                          ),
                          DataColumn(
                            label: Text(context.tr.brand),
                          ),
                          DataColumn2(
                            size: ColumnSize.S,
                            numeric: true,
                            label: Text(context.tr.quantity),
                          ),
                          DataColumn2(
                            size: ColumnSize.S,
                            numeric: true,
                            label: Text(context.tr.price),
                          ),
                          DataColumn2(
                            fixedWidth: 68,
                            numeric: true,
                            label: Text(context.tr.action),
                          ),
                        ],
                        rows: filteredProducts.map((product) {
                          return DataRow(
                            cells: [
                              DataCell(Text(product.name)),
                              DataCell(Text(product.number)),
                              DataCell(
                                Text(
                                  product.vehicle != ''
                                      ? vehicles
                                          .firstWhere((vehicle) =>
                                              vehicle.id == product.vehicle)
                                          .name
                                      : '',
                                ),
                              ),
                              DataCell(
                                Text(
                                  product.brand != ''
                                      ? brands
                                          .firstWhere((brand) =>
                                              brand.id == product.brand)
                                          .name
                                      : '',
                                ),
                              ),
                              DataCell(
                                Text(product.quantity.toString()),
                              ),
                              DataCell(
                                Text(product.price.toString()),
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
                                                  InventoryFeatures.product(
                                                type: ViewType.update(
                                                  id: product.id,
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
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
