import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/presentation/inventory/core/search_criteria_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

part 'product_overview_view_bloc.freezed.dart';
part 'product_overview_view_event.dart';
part 'product_overview_view_state.dart';

class ProductOverviewViewBloc
    extends Bloc<ProductOverviewViewEvent, ProductOverviewViewState> {
  ProductOverviewViewBloc({
    required CRUDController<Product> controller,
    required CRUDController<Brand> controllerBrand,
    required CRUDController<Vehicle> controllerVehicle,
  }) : super(const ProductOverviewViewState.empty()) {
    on<ProductOverviewViewEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ProductOverviewViewState.loading());

          var result = await Future.wait([
            controller.getAll(),
            controllerBrand.getAll(),
            controllerVehicle.getAll(),
          ]);

          emit(
            ProductOverviewViewState.loaded(
              products: result[0] as List<Product>,
              filteredProducts: result[0] as List<Product>,
              brands: result[1] as List<Brand>,
              vehicles: result[2] as List<Vehicle>,
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
                    return loadded.vehicles
                        .where(
                          (vehicle) => vehicle.name.toLowerCase().contains(
                                text,
                              ),
                        )
                        .any((vehicle) => vehicle.id == product.vehicle);
                  case SearchCriteriaType.brand:
                    return loadded.brands
                        .where(
                          (brand) => brand.name.toLowerCase().contains(
                                text,
                              ),
                        )
                        .any((brand) => brand.id == product.brand);
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
