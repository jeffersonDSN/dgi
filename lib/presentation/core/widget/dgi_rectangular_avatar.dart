import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class DgiRectangularAvatar extends StatelessWidget {
  final Widget? child;
  final double? dimension;

  const DgiRectangularAvatar({
    super.key,
    this.child,
    this.dimension,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.size8),
          child: SizedBox.square(
            dimension: dimension ?? 40,
            child: child ??
                Container(
                  color: AppColor.backgroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
