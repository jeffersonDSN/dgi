// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_other_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductOtherStore _$ProductOtherStoreFromJson(Map<String, dynamic> json) {
  return _ProductOtherStore.fromJson(json);
}

/// @nodoc
mixin _$ProductOtherStore {
  String get store => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get vehicle => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOtherStoreCopyWith<ProductOtherStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOtherStoreCopyWith<$Res> {
  factory $ProductOtherStoreCopyWith(
          ProductOtherStore value, $Res Function(ProductOtherStore) then) =
      _$ProductOtherStoreCopyWithImpl<$Res, ProductOtherStore>;
  @useResult
  $Res call(
      {String store,
      String id,
      String name,
      String number,
      String brand,
      String vehicle,
      int quantity,
      double price});
}

/// @nodoc
class _$ProductOtherStoreCopyWithImpl<$Res, $Val extends ProductOtherStore>
    implements $ProductOtherStoreCopyWith<$Res> {
  _$ProductOtherStoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? brand = null,
    Object? vehicle = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductOtherStoreImplCopyWith<$Res>
    implements $ProductOtherStoreCopyWith<$Res> {
  factory _$$ProductOtherStoreImplCopyWith(_$ProductOtherStoreImpl value,
          $Res Function(_$ProductOtherStoreImpl) then) =
      __$$ProductOtherStoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String store,
      String id,
      String name,
      String number,
      String brand,
      String vehicle,
      int quantity,
      double price});
}

/// @nodoc
class __$$ProductOtherStoreImplCopyWithImpl<$Res>
    extends _$ProductOtherStoreCopyWithImpl<$Res, _$ProductOtherStoreImpl>
    implements _$$ProductOtherStoreImplCopyWith<$Res> {
  __$$ProductOtherStoreImplCopyWithImpl(_$ProductOtherStoreImpl _value,
      $Res Function(_$ProductOtherStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? brand = null,
    Object? vehicle = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$ProductOtherStoreImpl(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOtherStoreImpl implements _ProductOtherStore {
  const _$ProductOtherStoreImpl(
      {this.store = '',
      this.id = '',
      this.name = '',
      this.number = '',
      this.brand = '',
      this.vehicle = '',
      this.quantity = 0,
      this.price = 0});

  factory _$ProductOtherStoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOtherStoreImplFromJson(json);

  @override
  @JsonKey()
  final String store;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final String brand;
  @override
  @JsonKey()
  final String vehicle;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'ProductOtherStore(store: $store, id: $id, name: $name, number: $number, brand: $brand, vehicle: $vehicle, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOtherStoreImpl &&
            (identical(other.store, store) || other.store == store) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, store, id, name, number, brand, vehicle, quantity, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOtherStoreImplCopyWith<_$ProductOtherStoreImpl> get copyWith =>
      __$$ProductOtherStoreImplCopyWithImpl<_$ProductOtherStoreImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOtherStoreImplToJson(
      this,
    );
  }
}

abstract class _ProductOtherStore implements ProductOtherStore {
  const factory _ProductOtherStore(
      {final String store,
      final String id,
      final String name,
      final String number,
      final String brand,
      final String vehicle,
      final int quantity,
      final double price}) = _$ProductOtherStoreImpl;

  factory _ProductOtherStore.fromJson(Map<String, dynamic> json) =
      _$ProductOtherStoreImpl.fromJson;

  @override
  String get store;
  @override
  String get id;
  @override
  String get name;
  @override
  String get number;
  @override
  String get brand;
  @override
  String get vehicle;
  @override
  int get quantity;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductOtherStoreImplCopyWith<_$ProductOtherStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
