import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @Default('') String id,
    @Default('') String image,
    @Default('') String name,
    @Default('') String number,
    @Default('') String brand,
    @Default('') String vehicle,
    @Default(0) int quantity,
    @Default(0) double price,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
