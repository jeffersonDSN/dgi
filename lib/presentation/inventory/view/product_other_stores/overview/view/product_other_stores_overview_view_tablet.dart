import 'package:data_table_2/data_table_2.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/bloc/product_other_stores_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOtherStoresOverviewViewTablet extends IView {
  const ProductOtherStoresOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProductOtherStoresOverviewViewBloc>(context);

    bloc.add(
      const ProductOtherStoresOverviewViewEvent.load(),
    );

    return BlocBuilder<ProductOtherStoresOverviewViewBloc,
        ProductOtherStoresOverviewViewState>(
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
                                  ProductOtherStoresOverviewViewEvent
                                      .changeSearchCriteria(
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
                                  ProductOtherStoresOverviewViewEvent.search(
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
                              DataCell(Text(product.vehicle)),
                              DataCell(Text(product.brand)),
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
                                            color: AppColor.yellow,
                                            Icons.shopping_cart,
                                          ),
                                          gapWidth8,
                                          Text(context.tr.order),
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
