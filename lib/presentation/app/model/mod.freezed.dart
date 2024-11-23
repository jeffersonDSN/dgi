// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Mod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(InventoryFeatures inventoryFeatures) inventory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(InventoryFeatures inventoryFeatures)? inventory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(InventoryFeatures inventoryFeatures)? inventory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModInventory value) inventory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModInventory value)? inventory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModInventory value)? inventory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModCopyWith<$Res> {
  factory $ModCopyWith(Mod value, $Res Function(Mod) then) =
      _$ModCopyWithImpl<$Res, Mod>;
}

/// @nodoc
class _$ModCopyWithImpl<$Res, $Val extends Mod> implements $ModCopyWith<$Res> {
  _$ModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ModHomeImplCopyWith<$Res> {
  factory _$$ModHomeImplCopyWith(
          _$ModHomeImpl value, $Res Function(_$ModHomeImpl) then) =
      __$$ModHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModHomeImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModHomeImpl>
    implements _$$ModHomeImplCopyWith<$Res> {
  __$$ModHomeImplCopyWithImpl(
      _$ModHomeImpl _value, $Res Function(_$ModHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ModHomeImpl implements ModHome {
  const _$ModHomeImpl();

  @override
  String toString() {
    return 'Mod.home()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(InventoryFeatures inventoryFeatures) inventory,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(InventoryFeatures inventoryFeatures)? inventory,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(InventoryFeatures inventoryFeatures)? inventory,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModInventory value) inventory,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModInventory value)? inventory,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModInventory value)? inventory,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class ModHome implements Mod {
  const factory ModHome() = _$ModHomeImpl;
}

/// @nodoc
abstract class _$$ModInventoryImplCopyWith<$Res> {
  factory _$$ModInventoryImplCopyWith(
          _$ModInventoryImpl value, $Res Function(_$ModInventoryImpl) then) =
      __$$ModInventoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryFeatures inventoryFeatures});

  $InventoryFeaturesCopyWith<$Res> get inventoryFeatures;
}

/// @nodoc
class __$$ModInventoryImplCopyWithImpl<$Res>
    extends _$ModCopyWithImpl<$Res, _$ModInventoryImpl>
    implements _$$ModInventoryImplCopyWith<$Res> {
  __$$ModInventoryImplCopyWithImpl(
      _$ModInventoryImpl _value, $Res Function(_$ModInventoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryFeatures = null,
  }) {
    return _then(_$ModInventoryImpl(
      inventoryFeatures: null == inventoryFeatures
          ? _value.inventoryFeatures
          : inventoryFeatures // ignore: cast_nullable_to_non_nullable
              as InventoryFeatures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InventoryFeaturesCopyWith<$Res> get inventoryFeatures {
    return $InventoryFeaturesCopyWith<$Res>(_value.inventoryFeatures, (value) {
      return _then(_value.copyWith(inventoryFeatures: value));
    });
  }
}

/// @nodoc

class _$ModInventoryImpl implements ModInventory {
  const _$ModInventoryImpl(
      {this.inventoryFeatures =
          const InventoryFeatures.product(type: ViewType.overview())});

  @override
  @JsonKey()
  final InventoryFeatures inventoryFeatures;

  @override
  String toString() {
    return 'Mod.inventory(inventoryFeatures: $inventoryFeatures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModInventoryImpl &&
            (identical(other.inventoryFeatures, inventoryFeatures) ||
                other.inventoryFeatures == inventoryFeatures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryFeatures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModInventoryImplCopyWith<_$ModInventoryImpl> get copyWith =>
      __$$ModInventoryImplCopyWithImpl<_$ModInventoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(InventoryFeatures inventoryFeatures) inventory,
  }) {
    return inventory(inventoryFeatures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? home,
    TResult? Function(InventoryFeatures inventoryFeatures)? inventory,
  }) {
    return inventory?.call(inventoryFeatures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(InventoryFeatures inventoryFeatures)? inventory,
    required TResult orElse(),
  }) {
    if (inventory != null) {
      return inventory(inventoryFeatures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModHome value) home,
    required TResult Function(ModInventory value) inventory,
  }) {
    return inventory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModHome value)? home,
    TResult? Function(ModInventory value)? inventory,
  }) {
    return inventory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModHome value)? home,
    TResult Function(ModInventory value)? inventory,
    required TResult orElse(),
  }) {
    if (inventory != null) {
      return inventory(this);
    }
    return orElse();
  }
}

abstract class ModInventory implements Mod {
  const factory ModInventory({final InventoryFeatures inventoryFeatures}) =
      _$ModInventoryImpl;

  InventoryFeatures get inventoryFeatures;
  @JsonKey(ignore: true)
  _$$ModInventoryImplCopyWith<_$ModInventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
