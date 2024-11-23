import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/crud_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/core/widget/base_text_form_field.dart';
import 'package:dgi/presentation/inventory/view/brand/register/bloc/brand_register_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandRegisterViewMobile extends IView {
  final CrudType type;

  const BrandRegisterViewMobile({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<BrandRegisterBloc>(context);

    bloc.add(
      BrandRegisterEvent.load(type: type),
    );

    return Container(
      color: AppColor.lightColor,
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<BrandRegisterBloc, BrandRegisterState>(
              bloc: bloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (type, brand) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: Sizes.size16,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BaseTextFormField(
                              label: context.tr.name,
                              initialValue: brand.name,
                              onChanged: (value) {
                                bloc.add(
                                  BrandRegisterEvent.changeName(
                                    name: value,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
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
              Expanded(
                child: Padding(
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
              ),
              Expanded(
                child: Padding(
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
                        BrandRegisterEvent.save(
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
      ),
    );
  }
}