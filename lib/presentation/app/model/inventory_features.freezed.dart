// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryFeatures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewType type) product,
    required TResult Function(ViewType type) vehicle,
    required TResult Function(ViewType type) brand,
    required TResult Function() otherStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewType type)? product,
    TResult? Function(ViewType type)? vehicle,
    TResult? Function(ViewType type)? brand,
    TResult? Function()? otherStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewType type)? product,
    TResult Function(ViewType type)? vehicle,
    TResult Function(ViewType type)? brand,
    TResult Function()? otherStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryFeaturesProduct value) product,
    required TResult Function(InventoryFeaturesModel value) vehicle,
    required TResult Function(InventoryFeaturesBrand value) brand,
    required TResult Function(InventoryFeaturesOtherStores value) otherStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryFeaturesProduct value)? product,
    TResult? Function(InventoryFeaturesModel value)? vehicle,
    TResult? Function(InventoryFeaturesBrand value)? brand,
    TResult? Function(InventoryFeaturesOtherStores value)? otherStores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryFeaturesProduct value)? product,
    TResult Function(InventoryFeaturesModel value)? vehicle,
    TResult Function(InventoryFeaturesBrand value)? brand,
    TResult Function(InventoryFeaturesOtherStores value)? otherStores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryFeaturesCopyWith<$Res> {
  factory $InventoryFeaturesCopyWith(
          InventoryFeatures value, $Res Function(InventoryFeatures) then) =
      _$InventoryFeaturesCopyWithImpl<$Res, InventoryFeatures>;
}

/// @nodoc
class _$InventoryFeaturesCopyWithImpl<$Res, $Val extends InventoryFeatures>
    implements $InventoryFeaturesCopyWith<$Res> {
  _$InventoryFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InventoryFeaturesProductImplCopyWith<$Res> {
  factory _$$InventoryFeaturesProductImplCopyWith(
          _$InventoryFeaturesProductImpl value,
          $Res Function(_$InventoryFeaturesProductImpl) then) =
      __$$InventoryFeaturesProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$InventoryFeaturesProductImplCopyWithImpl<$Res>
    extends _$InventoryFeaturesCopyWithImpl<$Res,
        _$InventoryFeaturesProductImpl>
    implements _$$InventoryFeaturesProductImplCopyWith<$Res> {
  __$$InventoryFeaturesProductImplCopyWithImpl(
      _$InventoryFeaturesProductImpl _value,
      $Res Function(_$InventoryFeaturesProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$InventoryFeaturesProductImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$InventoryFeaturesProductImpl implements InventoryFeaturesProduct {
  const _$InventoryFeaturesProductImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'InventoryFeatures.product(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryFeaturesProductImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryFeaturesProductImplCopyWith<_$InventoryFeaturesProductImpl>
      get copyWith => __$$InventoryFeaturesProductImplCopyWithImpl<
          _$InventoryFeaturesProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewType type) product,
    required TResult Function(ViewType type) vehicle,
    required TResult Function(ViewType type) brand,
    required TResult Function() otherStores,
  }) {
    return product(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewType type)? product,
    TResult? Function(ViewType type)? vehicle,
    TResult? Function(ViewType type)? brand,
    TResult? Function()? otherStores,
  }) {
    return product?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewType type)? product,
    TResult Function(ViewType type)? vehicle,
    TResult Function(ViewType type)? brand,
    TResult Function()? otherStores,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryFeaturesProduct value) product,
    required TResult Function(InventoryFeaturesModel value) vehicle,
    required TResult Function(InventoryFeaturesBrand value) brand,
    required TResult Function(InventoryFeaturesOtherStores value) otherStores,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryFeaturesProduct value)? product,
    TResult? Function(InventoryFeaturesModel value)? vehicle,
    TResult? Function(InventoryFeaturesBrand value)? brand,
    TResult? Function(InventoryFeaturesOtherStores value)? otherStores,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryFeaturesProduct value)? product,
    TResult Function(InventoryFeaturesModel value)? vehicle,
    TResult Function(InventoryFeaturesBrand value)? brand,
    TResult Function(InventoryFeaturesOtherStores value)? otherStores,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class InventoryFeaturesProduct implements InventoryFeatures {
  const factory InventoryFeaturesProduct({required final ViewType type}) =
      _$InventoryFeaturesProductImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$InventoryFeaturesProductImplCopyWith<_$InventoryFeaturesProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryFeaturesModelImplCopyWith<$Res> {
  factory _$$InventoryFeaturesModelImplCopyWith(
          _$InventoryFeaturesModelImpl value,
          $Res Function(_$InventoryFeaturesModelImpl) then) =
      __$$InventoryFeaturesModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$InventoryFeaturesModelImplCopyWithImpl<$Res>
    extends _$InventoryFeaturesCopyWithImpl<$Res, _$InventoryFeaturesModelImpl>
    implements _$$InventoryFeaturesModelImplCopyWith<$Res> {
  __$$InventoryFeaturesModelImplCopyWithImpl(
      _$InventoryFeaturesModelImpl _value,
      $Res Function(_$InventoryFeaturesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$InventoryFeaturesModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$InventoryFeaturesModelImpl implements InventoryFeaturesModel {
  const _$InventoryFeaturesModelImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'InventoryFeatures.vehicle(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryFeaturesModelImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryFeaturesModelImplCopyWith<_$InventoryFeaturesModelImpl>
      get copyWith => __$$InventoryFeaturesModelImplCopyWithImpl<
          _$InventoryFeaturesModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewType type) product,
    required TResult Function(ViewType type) vehicle,
    required TResult Function(ViewType type) brand,
    required TResult Function() otherStores,
  }) {
    return vehicle(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewType type)? product,
    TResult? Function(ViewType type)? vehicle,
    TResult? Function(ViewType type)? brand,
    TResult? Function()? otherStores,
  }) {
    return vehicle?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewType type)? product,
    TResult Function(ViewType type)? vehicle,
    TResult Function(ViewType type)? brand,
    TResult Function()? otherStores,
    required TResult orElse(),
  }) {
    if (vehicle != null) {
      return vehicle(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryFeaturesProduct value) product,
    required TResult Function(InventoryFeaturesModel value) vehicle,
    required TResult Function(InventoryFeaturesBrand value) brand,
    required TResult Function(InventoryFeaturesOtherStores value) otherStores,
  }) {
    return vehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryFeaturesProduct value)? product,
    TResult? Function(InventoryFeaturesModel value)? vehicle,
    TResult? Function(InventoryFeaturesBrand value)? brand,
    TResult? Function(InventoryFeaturesOtherStores value)? otherStores,
  }) {
    return vehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryFeaturesProduct value)? product,
    TResult Function(InventoryFeaturesModel value)? vehicle,
    TResult Function(InventoryFeaturesBrand value)? brand,
    TResult Function(InventoryFeaturesOtherStores value)? otherStores,
    required TResult orElse(),
  }) {
    if (vehicle != null) {
      return vehicle(this);
    }
    return orElse();
  }
}

abstract class InventoryFeaturesModel implements InventoryFeatures {
  const factory InventoryFeaturesModel({required final ViewType type}) =
      _$InventoryFeaturesModelImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$InventoryFeaturesModelImplCopyWith<_$InventoryFeaturesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryFeaturesBrandImplCopyWith<$Res> {
  factory _$$InventoryFeaturesBrandImplCopyWith(
          _$InventoryFeaturesBrandImpl value,
          $Res Function(_$InventoryFeaturesBrandImpl) then) =
      __$$InventoryFeaturesBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewType type});

  $ViewTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$InventoryFeaturesBrandImplCopyWithImpl<$Res>
    extends _$InventoryFeaturesCopyWithImpl<$Res, _$InventoryFeaturesBrandImpl>
    implements _$$InventoryFeaturesBrandImplCopyWith<$Res> {
  __$$InventoryFeaturesBrandImplCopyWithImpl(
      _$InventoryFeaturesBrandImpl _value,
      $Res Function(_$InventoryFeaturesBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$InventoryFeaturesBrandImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewTypeCopyWith<$Res> get type {
    return $ViewTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$InventoryFeaturesBrandImpl implements InventoryFeaturesBrand {
  const _$InventoryFeaturesBrandImpl({required this.type});

  @override
  final ViewType type;

  @override
  String toString() {
    return 'InventoryFeatures.brand(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryFeaturesBrandImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryFeaturesBrandImplCopyWith<_$InventoryFeaturesBrandImpl>
      get copyWith => __$$InventoryFeaturesBrandImplCopyWithImpl<
          _$InventoryFeaturesBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewType type) product,
    required TResult Function(ViewType type) vehicle,
    required TResult Function(ViewType type) brand,
    required TResult Function() otherStores,
  }) {
    return brand(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewType type)? product,
    TResult? Function(ViewType type)? vehicle,
    TResult? Function(ViewType type)? brand,
    TResult? Function()? otherStores,
  }) {
    return brand?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewType type)? product,
    TResult Function(ViewType type)? vehicle,
    TResult Function(ViewType type)? brand,
    TResult Function()? otherStores,
    required TResult orElse(),
  }) {
    if (brand != null) {
      return brand(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryFeaturesProduct value) product,
    required TResult Function(InventoryFeaturesModel value) vehicle,
    required TResult Function(InventoryFeaturesBrand value) brand,
    required TResult Function(InventoryFeaturesOtherStores value) otherStores,
  }) {
    return brand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryFeaturesProduct value)? product,
    TResult? Function(InventoryFeaturesModel value)? vehicle,
    TResult? Function(InventoryFeaturesBrand value)? brand,
    TResult? Function(InventoryFeaturesOtherStores value)? otherStores,
  }) {
    return brand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryFeaturesProduct value)? product,
    TResult Function(InventoryFeaturesModel value)? vehicle,
    TResult Function(InventoryFeaturesBrand value)? brand,
    TResult Function(InventoryFeaturesOtherStores value)? otherStores,
    required TResult orElse(),
  }) {
    if (brand != null) {
      return brand(this);
    }
    return orElse();
  }
}

abstract class InventoryFeaturesBrand implements InventoryFeatures {
  const factory InventoryFeaturesBrand({required final ViewType type}) =
      _$InventoryFeaturesBrandImpl;

  ViewType get type;
  @JsonKey(ignore: true)
  _$$InventoryFeaturesBrandImplCopyWith<_$InventoryFeaturesBrandImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryFeaturesOtherStoresImplCopyWith<$Res> {
  factory _$$InventoryFeaturesOtherStoresImplCopyWith(
          _$InventoryFeaturesOtherStoresImpl value,
          $Res Function(_$InventoryFeaturesOtherStoresImpl) then) =
      __$$InventoryFeaturesOtherStoresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryFeaturesOtherStoresImplCopyWithImpl<$Res>
    extends _$InventoryFeaturesCopyWithImpl<$Res,
        _$InventoryFeaturesOtherStoresImpl>
    implements _$$InventoryFeaturesOtherStoresImplCopyWith<$Res> {
  __$$InventoryFeaturesOtherStoresImplCopyWithImpl(
      _$InventoryFeaturesOtherStoresImpl _value,
      $Res Function(_$InventoryFeaturesOtherStoresImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InventoryFeaturesOtherStoresImpl
    implements InventoryFeaturesOtherStores {
  const _$InventoryFeaturesOtherStoresImpl();

  @override
  String toString() {
    return 'InventoryFeatures.otherStores()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryFeaturesOtherStoresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewType type) product,
    required TResult Function(ViewType type) vehicle,
    required TResult Function(ViewType type) brand,
    required TResult Function() otherStores,
  }) {
    return otherStores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewType type)? product,
    TResult? Function(ViewType type)? vehicle,
    TResult? Function(ViewType type)? brand,
    TResult? Function()? otherStores,
  }) {
    return otherStores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewType type)? product,
    TResult Function(ViewType type)? vehicle,
    TResult Function(ViewType type)? brand,
    TResult Function()? otherStores,
    required TResult orElse(),
  }) {
    if (otherStores != null) {
      return otherStores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryFeaturesProduct value) product,
    required TResult Function(InventoryFeaturesModel value) vehicle,
    required TResult Function(InventoryFeaturesBrand value) brand,
    required TResult Function(InventoryFeaturesOtherStores value) otherStores,
  }) {
    return otherStores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryFeaturesProduct value)? product,
    TResult? Function(InventoryFeaturesModel value)? vehicle,
    TResult? Function(InventoryFeaturesBrand value)? brand,
    TResult? Function(InventoryFeaturesOtherStores value)? otherStores,
  }) {
    return otherStores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryFeaturesProduct value)? product,
    TResult Function(InventoryFeaturesModel value)? vehicle,
    TResult Function(InventoryFeaturesBrand value)? brand,
    TResult Function(InventoryFeaturesOtherStores value)? otherStores,
    required TResult orElse(),
  }) {
    if (otherStores != null) {
      return otherStores(this);
    }
    return orElse();
  }
}

abstract class InventoryFeaturesOtherStores implements InventoryFeatures {
  const factory InventoryFeaturesOtherStores() =
      _$InventoryFeaturesOtherStoresImpl;
}
