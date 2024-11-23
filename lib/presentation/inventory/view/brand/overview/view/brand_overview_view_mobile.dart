import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/inventory/view/brand/overview/bloc/brand_overview_view_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandOverviewViewMobile extends IView {
  const BrandOverviewViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<BrandOverviewViewBloc>(context);

    bloc.add(
      const BrandOverviewViewEvent.load(),
    );

    return BlocBuilder<BrandOverviewViewBloc, BrandOverviewViewState>(
      bloc: bloc,
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: state.maybeWhen(
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (brands) {
                  return ListView.separated(
                    itemCount: brands.length,
                    itemBuilder: (context, index) {
                      var brand = brands[index];
                      return ListTile(
                        textColor: AppColor.black,
                        title: Text(brand.name),
                        onTap: () {
                          appBloc(context).add(
                            AppEvent.changeView(
                              mod: ModInventory(
                                inventoryFeatures: InventoryFeatures.brand(
                                  type: ViewType.update(id: brand.id),
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
