import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/brand_overview.dart';
import 'package:dgi/presentation/inventory/view/brand/register/brand_register.dart';
import 'package:dgi/presentation/inventory/view/product/overview/product_overview.dart';
import 'package:dgi/presentation/inventory/view/product/register/product_register.dart';
import 'package:dgi/presentation/inventory/view/product_other_stores/overview/product_other_stores_overview.dart';
import 'package:dgi/presentation/inventory/view/vehicle/overview/vehicle_overview.dart';
import 'package:dgi/presentation/inventory/view/vehicle/register/vehicle_register.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InventoryOverviewViewTablet extends IView {
  const InventoryOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = appBloc(context);

    return DefaultTabController(
      initialIndex:
          bloc.state.asLogged.mod.asModInventory.inventoryFeatures.when(
        product: (type) => 0,
        vehicle: (type) => 1,
        brand: (type) => 2,
        otherStores: () => 3,
      ),
      length: 4,
      child: Column(
        children: [
          Container(
            height: Sizes.size64,
            color: AppColor.lightColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: Sizes.size600,
                  child: Padding(
                    padding: const EdgeInsets.all(Sizes.size16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Sizes.size4,
                        ),
                        color: AppColor.backgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: BlocBuilder<AppBloc, AppState>(
                          builder: (context, state) {
                            return TabBar(
                              onTap: (index) {
                                InventoryFeatures inventoryFeatures;

                                switch (index) {
                                  case 0:
                                    inventoryFeatures =
                                        const InventoryFeatures.product(
                                      type: ViewType.overview(),
                                    );
                                    break;
                                  case 1:
                                    inventoryFeatures =
                                        const InventoryFeatures.vehicle(
                                      type: ViewType.overview(),
                                    );
                                    break;
                                  case 2:
                                    inventoryFeatures =
                                        const InventoryFeatures.brand(
                                      type: ViewType.overview(),
                                    );
                                    break;
                                  case 3:
                                    inventoryFeatures =
                                        const InventoryFeatures.otherStores();
                                    break;
                                  default:
                                    inventoryFeatures =
                                        const InventoryFeatures.product(
                                      type: ViewType.overview(),
                                    );
                                }

                                bloc.add(
                                  AppEvent.changeView(
                                    mod: Mod.inventory(
                                      inventoryFeatures: inventoryFeatures,
                                    ),
                                  ),
                                );
                              },
                              indicator: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Sizes.size4),
                                color: Colors.white,
                              ),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.black,
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              tabs: [
                                Row(
                                  children: [
                                    const Icon(Icons.inventory),
                                    gapWidth4,
                                    Text(context.tr.product),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.car_repair),
                                    gapWidth4,
                                    Text(context.tr.vehicle),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.label),
                                    gapWidth4,
                                    Text(context.tr.brand),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.shop),
                                    gapWidth4,
                                    Text(context.tr.otherStores),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          gapHeight4,
          Expanded(
            child: TabBarView(
              children:
                  bloc.state.asLogged.mod.asModInventory.inventoryFeatures.when(
                product: (type) {
                  return [
                    type.when(
                      overview: () => const ProductOverview(),
                      create: () => const ProductRegister(),
                      update: (id) => ProductRegister(
                        type: CrudType.update(id: id),
                      ),
                    ),
                    Container(),
                    Container(),
                    Container(),
                  ];
                },
                vehicle: (type) {
                  return [
                    Container(),
                    type.when(
                      overview: () => const VehicleOverview(),
                      create: () => const VehicleRegister(),
                      update: (id) => VehicleRegister(
                        type: CrudType.update(id: id),
                      ),
                    ),
                    Container(),
                    Container(),
                  ];
                },
                brand: (type) {
                  return [
                    Container(),
                    Container(),
                    type.when(
                      overview: () => const BrandOverview(),
                      create: () => const BrandRegister(),
                      update: (id) => BrandRegister(
                        type: CrudType.update(id: id),
                      ),
                    ),
                    Container(),
                  ];
                },
                otherStores: () {
                  return [
                    Container(),
                    Container(),
                    Container(),
                    const ProductOtherStoresOverview(),
                  ];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
