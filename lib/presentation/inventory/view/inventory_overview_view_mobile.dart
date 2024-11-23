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

class InventoryOverviewViewMobile extends IView {
  const InventoryOverviewViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = appBloc(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColorSwatch,
        iconTheme: const IconThemeData(
          color: AppColor.yellow,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            bloc.state.asLogged.mod.asModInventory.asModInventory
                .inventoryFeatures
                .when(
              product: (type) {
                type.maybeWhen(
                  orElse: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                  overview: () {
                    appBloc(context).add(
                      const AppEvent.changeView(
                        mod: ModHome(),
                      ),
                    );
                  },
                );
              },
              vehicle: (type) {
                type.maybeWhen(
                  orElse: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                  overview: () {
                    appBloc(context).add(
                      const AppEvent.changeView(
                        mod: ModHome(),
                      ),
                    );
                  },
                );
              },
              brand: (type) {
                type.maybeWhen(
                  orElse: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                  overview: () {
                    appBloc(context).add(
                      const AppEvent.changeView(
                        mod: ModHome(),
                      ),
                    );
                  },
                );
              },
              otherStores: () {
                appBloc(context).add(
                  const AppEvent.changeView(
                    mod: ModHome(),
                  ),
                );
              },
            );
          },
        ),
        title: Column(
          children: [
            gapHeight4,
            Image.asset(
              'assets/images/blue_logo.png',
              height: Sizes.size40,
            ),
            Text(
              context.tr.inventory.toUpperCase(),
              style: const TextStyle(
                color: AppColor.yellow,
                fontSize: 10,
              ),
            ),
          ],
        ),
        actions: [
          bloc.state.asLogged.mod.asModInventory.inventoryFeatures.when(
            product: (type) => type.when(
              overview: () => IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  size: Sizes.size40,
                  color: AppColor.yellow,
                ),
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
              create: () => Container(),
              update: (id) => Container(),
            ),
            vehicle: (type) => type.when(
              overview: () => IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  size: Sizes.size40,
                  color: AppColor.yellow,
                ),
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
              create: () => Container(),
              update: (id) => Container(),
            ),
            brand: (type) => type.when(
              overview: () => IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  size: Sizes.size40,
                  color: AppColor.yellow,
                ),
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
              create: () => Container(),
              update: (id) => Container(),
            ),
            otherStores: () => Container(),
          )
        ],
      ),
      body: Container(
        color: AppColor.lightColor,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.size16),
          child: BlocBuilder<AppBloc, AppState>(
            bloc: bloc,
            builder: (context, state) {
              return bloc.state.asLogged.mod.asModInventory.inventoryFeatures
                  .when(
                product: (type) => type.when(
                  overview: () => const ProductOverview(),
                  create: () => const ProductRegister(),
                  update: (id) => ProductRegister(
                    type: CrudType.update(
                      id: id,
                    ),
                  ),
                ),
                vehicle: (type) => type.when(
                  overview: () => const VehicleOverview(),
                  create: () => const VehicleRegister(),
                  update: (id) => VehicleRegister(
                    type: CrudType.update(
                      id: id,
                    ),
                  ),
                ),
                brand: (type) => type.when(
                  overview: () => const BrandOverview(),
                  create: () => const BrandRegister(),
                  update: (id) => BrandRegister(
                    type: CrudType.update(
                      id: id,
                    ),
                  ),
                ),
                otherStores: () => const ProductOtherStoresOverview(),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:
            bloc.state.asLogged.mod.asModInventory.inventoryFeatures.when(
          product: (type) => 0,
          vehicle: (type) => 1,
          brand: (type) => 2,
          otherStores: () => 3,
        ),
        items: [
          BottomNavigationBarItem(
            label: context.tr.product,
            icon: const Icon(
              Icons.inventory,
            ),
          ),
          BottomNavigationBarItem(
            label: context.tr.vehicle,
            icon: const Icon(
              Icons.car_repair,
            ),
          ),
          BottomNavigationBarItem(
            label: context.tr.brand,
            icon: const Icon(
              Icons.label,
            ),
          ),
          BottomNavigationBarItem(
            label: context.tr.otherStores,
            icon: const Icon(
              Icons.shop,
            ),
          )
        ],
        onTap: (index) {
          InventoryFeatures inventoryFeatures;

          switch (index) {
            case 0:
              inventoryFeatures = const InventoryFeatures.product(
                type: ViewType.overview(),
              );
              break;
            case 1:
              inventoryFeatures = const InventoryFeatures.vehicle(
                type: ViewType.overview(),
              );
              break;
            case 2:
              inventoryFeatures = const InventoryFeatures.brand(
                type: ViewType.overview(),
              );
              break;
            case 3:
              inventoryFeatures = const InventoryFeatures.otherStores();
              break;
            default:
              inventoryFeatures = const InventoryFeatures.product(
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
      ),
    );
  }
}
