import 'package:dgi/presentation/app/model/inventory_features.dart';
import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/home/overview/home_overview.dart';
import 'package:dgi/presentation/inventory/inventory_overview.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod.freezed.dart';

@freezed
class Mod with _$Mod {
  const factory Mod.home() = ModHome;
  const factory Mod.inventory({
    @Default(InventoryFeatures.product(
      type: ViewType.overview(),
    ))
    InventoryFeatures inventoryFeatures,
  }) = ModInventory;
}

extension OnModel on Mod {
  bool get isModHome => this is ModHome;
  bool get isModInventory => this is ModInventory;

  ModHome get asModHome => this as ModHome;
  ModInventory get asModInventory => this as ModInventory;

  Widget view() {
    return when(
      home: () => const HomeOverview(),
      inventory: (type) => const InventoryOverview(),
    );
  }

  String title(BuildContext context) {
    return when(
      home: () => context.tr.home,
      inventory: (inventoryFeatures) => context.tr.inventory,
    );
  }
}
