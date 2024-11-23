import 'package:dgi/domain/controllers/product_other_stores_controller.dart';
import 'package:dgi/domain/entities/product_other_store/product_other_store.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'product_other_stores_overview_view_bloc.freezed.dart';
part 'product_other_stores_overview_view_event.dart';
part 'product_other_stores_overview_view_state.dart';

class ProductOtherStoresOverviewViewBloc extends Bloc<
    ProductOtherStoresOverviewViewEvent, ProductOtherStoresOverviewViewState> {
  ProductOtherStoresOverviewViewBloc({
    required ProductOtherStoresController controller,
  }) : super(const ProductOtherStoresOverviewViewState.empty()) {
    on<ProductOtherStoresOverviewViewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ProductOtherStoresOverviewViewState.loading());

          var products = await controller.getAll();

          emit(
            ProductOtherStoresOverviewViewState.loaded(
              products: products,
              filteredProducts: products,
            ),
          );
        },
        changeSearchCriteria: (searchCriteria) {
          emit(
            state.asLoaded.copyWith(
              searchCriteria: searchCriteria,
            ),
          );
        },
        search: (searchText) {
          var loadded = state.asLoaded;
          var text = searchText.toLowerCase();

          emit(
            loadded.copyWith(
              filteredProducts: loadded.products.where((product) {
                switch (loadded.searchCriteria) {
                  case SearchCriteriaType.name:
                    return product.name.toLowerCase().contains(
                          text,
                        );
                  case SearchCriteriaType.number:
                    return product.number.toLowerCase().contains(
                          text,
                        );
                  case SearchCriteriaType.vehicle:
                    return product.vehicle.toLowerCase().contains(
                          text,
                        );
                  case SearchCriteriaType.brand:
                    return product.brand.toLowerCase().contains(
                          text,
                        );
                  default:
                    return product.name.toLowerCase().contains(text);
                }
              }).toList(),
            ),
          );
        },
      );
    });
  }
}
