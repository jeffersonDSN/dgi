import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_other_store.freezed.dart';
part 'product_other_store.g.dart';

@freezed
class ProductOtherStore with _$ProductOtherStore {
  const factory ProductOtherStore({
    @Default('') String store,
    @Default('') String id,
    @Default('') String name,
    @Default('') String number,
    @Default('') String brand,
    @Default('') String vehicle,
    @Default(0) int quantity,
    @Default(0) double price,
  }) = _ProductOtherStore;

  factory ProductOtherStore.fromJson(Map<String, Object?> json) =>
      _$ProductOtherStoreFromJson(json);
}
