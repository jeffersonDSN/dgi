import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/bloc/product_other_stores_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductOtherStoresOverviewViewMobile extends IView {
  const ProductOtherStoresOverviewViewMobile({super.key});

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
                ) {
                  return ListView(
                    children: filteredProducts.map((product) {
                      return Card(
                        child: SizedBox(
                          height: Sizes.size56,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.all(
                              Sizes.size8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${context.tr.name}: ',
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                            ),
                                            TextSpan(
                                              text: product.name,
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${context.tr.number}: ',
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                            ),
                                            TextSpan(
                                              text: product.number,
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${context.tr.vehicle}: ',
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                            ),
                                            TextSpan(
                                              text: product.vehicle,
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style
                                                      .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '${context.tr.brand}: ',
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style,
                                            ),
                                            TextSpan(
                                              text: product.brand,
                                              style:
                                                  DefaultTextStyle.of(context)
                                                      .style
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
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
