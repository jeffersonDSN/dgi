import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/base_dropdown_button_field.dart';
import 'package:dgi/presentation/core/widget/base_text_form_field.dart';
import 'package:dgi/presentation/inventory/view/vehicle/register/bloc/vehicle_register_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VehicleRegisterViewMobile extends IView {
  final CrudType type;

  const VehicleRegisterViewMobile({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehicleRegisterBloc>(context);

    bloc.add(
      VehicleRegisterEvent.load(type: type),
    );

    return BlocBuilder<VehicleRegisterBloc, VehicleRegisterState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (type, vehicle, brands) {
            return Column(
              children: [
                Expanded(
                  child: Card(
                    color: AppColor.lightColor,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.size16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BaseTextFormField(
                              label: context.tr.name,
                              initialValue: vehicle.name,
                              onChanged: (value) {
                                bloc.add(
                                  VehicleRegisterEvent.changeName(
                                    name: value,
                                  ),
                                );
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              label: context.tr.model,
                              initialValue: vehicle.model,
                              onChanged: (value) {
                                bloc.add(
                                  VehicleRegisterEvent.changeModel(
                                    model: value,
                                  ),
                                );
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              keyboardType: TextInputType.number,
                              label: context.tr.fromYear,
                              initialValue: vehicle.fromYear,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {
                                bloc.add(
                                  VehicleRegisterEvent.changeFromYear(
                                    fromYear: value,
                                  ),
                                );
                              },
                            ),
                            gapHeight16,
                            BaseTextFormField(
                              keyboardType: TextInputType.number,
                              label: context.tr.toYear,
                              initialValue: vehicle.toYear,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {
                                bloc.add(
                                  VehicleRegisterEvent.changeToYear(
                                    toYear: value,
                                  ),
                                );
                              },
                            ),
                            gapHeight16,
                            BaseDropdownButtonField(
                              label: context.tr.brand,
                              value: vehicle.brand,
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
                                    VehicleRegisterEvent.changeBrand(
                                      brand: value,
                                    ),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: OutlinedButton(
                          child: Text(context.tr.close),
                          onPressed: () {
                            appBloc(context).add(
                              const AppEvent.goBack(),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Sizes.size8),
                        child: FilledButton(
                          child: Text(context.tr.save),
                          onPressed: () {
                            bloc.add(
                              VehicleRegisterEvent.save(
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
