import 'package:dgi/presentation/core/utils/image_picker_service.dart';
import 'package:flutter/foundation.dart';

import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:dgi/presentation/core/widget/base_text_form_field.dart';
import 'package:dgi/presentation/core/widget/dgi_rectangular_avatar.dart';
import 'package:dgi/presentation/inventory/view/product/register/bloc/product_register_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductRegisterViewMobile extends IView {
  static const platform = MethodChannel('com.example.native/camera');

  final CrudType type;

  const ProductRegisterViewMobile({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<ProductRegisterBloc>(context);

    bloc.add(
      ProductRegisterEvent.load(type: type),
    );

    return BlocBuilder<ProductRegisterBloc, ProductRegisterState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (type, product, image, vehicles, brands) {
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    Sizes.size8,
                                  ),
                                  color: AppColor.lightColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(Sizes.size8),
                                  child: InkWell(
                                    child: DgiRectangularAvatar(
                                      dimension: Sizes.size156,
                                      child: image != null
                                          ? Image.memory(image,
                                              fit: BoxFit.fill)
                                          : Container(
                                              color: AppColor.backgroundColor,
                                              child: const Icon(
                                                Icons.camera_alt,
                                                size: Sizes.size48,
                                              ),
                                            ),
                                    ),
                                    onTap: () async {
                                      Uint8List? image;

                                      if (kIsWeb) {
                                        final result = await createImagePicker()
                                            .pickImage();
                                        image = result['data'] as Uint8List?;
                                      } else {
                                        image = await platform
                                            .invokeMethod('takePhoto');
                                      }

                                      bloc.add(
                                        ProductRegisterEvent.changeImage(
                                          image: image,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        gapHeight8,
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Sizes.size8,
                            ),
                            color: AppColor.lightColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(Sizes.size8),
                            child: Column(
                              children: [
                                BaseTextFormField(
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
                                gapHeight8,
                                BaseTextFormField(
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
                                gapHeight8,
                                BaseDropdownButtonField(
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
                                gapHeight8,
                                BaseDropdownButtonField(
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
                                gapHeight8,
                                Row(
                                  children: [
                                    Expanded(
                                      child: BaseTextFormField(
                                        keyboardType: TextInputType.number,
                                        label: context.tr.quantity,
                                        initialValue:
                                            product.quantity.toString(),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onChanged: (value) {
                                          bloc.add(
                                            ProductRegisterEvent.changeQuantity(
                                              quantity:
                                                  int.tryParse(value) ?? 0,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    gapWidth16,
                                    Expanded(
                                      child: BaseTextFormField(
                                        keyboardType: TextInputType.number,
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
                                              price:
                                                  double.tryParse(value) ?? 0,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                gapHeight8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          appBloc(context).add(
                            const AppEvent.goBack(),
                          );
                        },
                        child: Text(context.tr.close),
                      ),
                    ),
                    gapWidth16,
                    Expanded(
                      child: FilledButton(
                        child: Text(context.tr.save),
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
            );
          },
        );
      },
    );
  }
}
