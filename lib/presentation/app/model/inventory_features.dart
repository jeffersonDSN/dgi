import 'package:dgi/presentation/app/model/view_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_features.freezed.dart';

@freezed
class InventoryFeatures with _$InventoryFeatures {
  const factory InventoryFeatures.product({
    required ViewType type,
  }) = InventoryFeaturesProduct;
  const factory InventoryFeatures.vehicle({
    required ViewType type,
  }) = InventoryFeaturesModel;
  const factory InventoryFeatures.brand({
    required ViewType type,
  }) = InventoryFeaturesBrand;
  const factory InventoryFeatures.otherStores() = InventoryFeaturesOtherStores;
}
