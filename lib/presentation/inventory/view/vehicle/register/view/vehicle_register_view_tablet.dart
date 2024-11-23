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

class VehicleRegisterViewTablet extends IView {
  final CrudType type;

  const VehicleRegisterViewTablet({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehicleRegisterBloc>(context);

    bloc.add(
      VehicleRegisterEvent.load(type: type),
    );

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<VehicleRegisterBloc, VehicleRegisterState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (type, vehicle, brands) {
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
                                child: BaseTextFormField(
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
                              ),
                              gapWidth16,
                              Expanded(
                                child: BaseTextFormField(
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
                              ),
                            ],
                          ),
                          gapHeight16,
                          Row(
                            children: [
                              Expanded(
                                child: BaseTextFormField(
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
                              ),
                              gapWidth16,
                              Expanded(
                                child: BaseTextFormField(
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
                              ),
                              gapWidth16,
                              Expanded(
                                child: BaseDropdownButtonField(
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
            ],
          )
        ],
      ),
    );
  }
}
