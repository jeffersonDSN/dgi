import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:dgi/presentation/core/widget/base_text_form_field.dart';
import 'package:dgi/presentation/inventory/view/product/register/bloc/product_register_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductRegisterViewTablet extends IView {
  final CrudType type;

  const ProductRegisterViewTablet({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProductRegisterBloc>(context);

    bloc.add(
      ProductRegisterEvent.load(type: type),
    );

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<ProductRegisterBloc, ProductRegisterState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (type, product, image, vehicles, brands) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(
                        Sizes.size32,
                        Sizes.size16,
                        Sizes.size32,
                        Sizes.size16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: BaseTextFormField(
                                  label: context.tr.name,
                                  initialValue: product.name,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProductRegisterEvent.changeName(
                                        name: value,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              gapWidth16,
                              Expanded(
                                child: BaseTextFormField(
                                  label: context.tr.number,
                                  initialValue: product.number,
                                  onChanged: (value) {
                                    bloc.add(
                                      ProductRegisterEvent.changeNumber(
                                        number: value,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              gapWidth16,
                              Expanded(
                                flex: 2,
                                child: BaseDropdownButtonField(
                                  label: context.tr.brand,
                                  value: product.brand,
                                  isExpanded: true,
                                  items: [
                                    DropdownItem(
                                      value: '',
                                      title: '',
                                    ),
                                    ...brands.map((brand) {
                                      return DropdownItem(
                                        value: brand.id,
                                        title: brand.name,
                                      );
                                    }),
                                  ],
                                  onChanged: (value) {
                                    if (value != null) {
                                      bloc.add(
                                        ProductRegisterEvent.changeBrand(
                                          brand: value,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          gapHeight16,
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: BaseDropdownButtonField(
                                  label: context.tr.vehicle,
                                  value: product.vehicle,
                                  isExpanded: true,
                                  items: [
                                    DropdownItem(
                                      value: '',
                                      title: '',
                                    ),
                                    ...vehicles
                                        .where((vehicle) =>
                                            vehicle.brand == product.brand)
                                        .map((vehicle) {
                                      return DropdownItem(
                                        value: vehicle.id,
                                        title:
                                            '${vehicle.name} ${vehicle.model} ${vehicle.fromYear}/${vehicle.toYear}',
                                      );
                                    }),
                                  ],
                                  onChanged: (value) {
                                    if (value != null) {
                                      bloc.add(
                                        ProductRegisterEvent.changeVehicle(
                                          vehicle: value,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              gapWidth16,
                              Expanded(
                                flex: 1,
                                child: BaseTextFormField(
                                  label: context.tr.quantity,
                                  initialValue: product.quantity.toString(),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) {
                                    bloc.add(
                                      ProductRegisterEvent.changeQuantity(
                                        quantity: int.tryParse(value) ?? 0,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              gapWidth16,
                              Expanded(
                                flex: 1,
                                child: BaseTextFormField(
                                  label: context.tr.price,
                                  initialValue: product.price.toString(),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                      RegExp('[0-9.,]'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    bloc.add(
                                      ProductRegisterEvent.changePrice(
                                        price: double.tryParse(value) ?? 0,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColor.warning,
                    ),
                  ),
                  icon: const Icon(Icons.close),
                  label: Text(context.tr.close),
                  onPressed: () {
                    appBloc(context).add(
                      const AppEvent.goBack(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Sizes.size8),
                child: FilledButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColor.success,
                    ),
                  ),
                  icon: const Icon(
                    Icons.check,
                  ),
                  label: Text(context.tr.save),
                  onPressed: () {
                    bloc.add(
                      ProductRegisterEvent.save(
                        callback: () {
                          appBloc(context).add(
                            const AppEvent.goBack(),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
