import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:flutter/material.dart';

class LadingViewMobile extends IView {
  const LadingViewMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var bloc = appBloc(context);

    return bloc.state.asLogged.mod.view();
  }
}
