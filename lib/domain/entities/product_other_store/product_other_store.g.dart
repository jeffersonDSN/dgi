// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_other_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductOtherStoreImpl _$$ProductOtherStoreImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductOtherStoreImpl(
      store: json['store'] as String? ?? '',
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      number: json['number'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      vehicle: json['vehicle'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      price: (json['price'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$ProductOtherStoreImplToJson(
        _$ProductOtherStoreImpl instance) =>
    <String, dynamic>{
      'store': instance.store,
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'brand': instance.brand,
      'vehicle': instance.vehicle,
      'quantity': instance.quantity,
      'price': instance.price,
    };
