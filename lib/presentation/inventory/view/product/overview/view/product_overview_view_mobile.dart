import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/dgi_rectangular_avatar.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:dgi/presentation/inventory/view/product/overview/bloc/product_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOverviewViewMobile extends IView {
  const ProductOverviewViewMobile({super.key});

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
            Card(
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
            gapHeight8,
            const Divider(),
            gapHeight8,
            Expanded(
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
                  return ListView.separated(
                    itemCount: filteredProducts.length,
                    itemBuilder: (context, index) {
                      var product = filteredProducts[index];

                      var subtitle = product.vehicle != ''
                          ? '${vehicles.firstWhere(
                                (vehicle) => vehicle.id == product.vehicle,
                              ).name} - ${vehicles.firstWhere(
                                (vehicle) => vehicle.id == product.vehicle,
                              ).model}'
                          : 'N/A';

                      return ListTile(
                        leading: DgiRectangularAvatar(
                          child: product.image != ''
                              ? Image.network(
                                  product.image,
                                  fit: BoxFit.fill,
                                )
                              : null,
                        ),
                        title: Text(product.name),
                        subtitle: Text(subtitle),
                        onTap: () {
                          appBloc(context).add(
                            AppEvent.changeView(
                              mod: ModInventory(
                                inventoryFeatures: InventoryFeatures.product(
                                  type: ViewType.update(
                                    id: product.id,
                                  ),
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
