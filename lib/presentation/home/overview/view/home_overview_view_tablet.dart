import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeOverviewViewTablet extends IView {
  const HomeOverviewViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Sizes.size16,
          Sizes.size0,
          Sizes.size16,
          Sizes.size0,
        ),
        child: Container(),
      ),
    );
  }
}
