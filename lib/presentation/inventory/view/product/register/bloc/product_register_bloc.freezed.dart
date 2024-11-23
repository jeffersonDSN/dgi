// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRegisterEventCopyWith<$Res> {
  factory $ProductRegisterEventCopyWith(ProductRegisterEvent value,
          $Res Function(ProductRegisterEvent) then) =
      _$ProductRegisterEventCopyWithImpl<$Res, ProductRegisterEvent>;
}

/// @nodoc
class _$ProductRegisterEventCopyWithImpl<$Res,
        $Val extends ProductRegisterEvent>
    implements $ProductRegisterEventCopyWith<$Res> {
  _$ProductRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductRegisterEventLoadImplCopyWith<$Res> {
  factory _$$ProductRegisterEventLoadImplCopyWith(
          _$ProductRegisterEventLoadImpl value,
          $Res Function(_$ProductRegisterEventLoadImpl) then) =
      __$$ProductRegisterEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ProductRegisterEventLoadImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventLoadImpl>
    implements _$$ProductRegisterEventLoadImplCopyWith<$Res> {
  __$$ProductRegisterEventLoadImplCopyWithImpl(
      _$ProductRegisterEventLoadImpl _value,
      $Res Function(_$ProductRegisterEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ProductRegisterEventLoadImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get type {
    return $CrudTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$ProductRegisterEventLoadImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventLoad {
  const _$ProductRegisterEventLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.load(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.load'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventLoadImplCopyWith<_$ProductRegisterEventLoadImpl>
      get copyWith => __$$ProductRegisterEventLoadImplCopyWithImpl<
          _$ProductRegisterEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventLoad implements ProductRegisterEvent {
  const factory ProductRegisterEventLoad({required final CrudType type}) =
      _$ProductRegisterEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventLoadImplCopyWith<_$ProductRegisterEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeImageImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeImageImplCopyWith(
          _$ProductRegisterEventChangeImageImpl value,
          $Res Function(_$ProductRegisterEventChangeImageImpl) then) =
      __$$ProductRegisterEventChangeImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List image});
}

/// @nodoc
class __$$ProductRegisterEventChangeImageImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeImageImpl>
    implements _$$ProductRegisterEventChangeImageImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeImageImplCopyWithImpl(
      _$ProductRegisterEventChangeImageImpl _value,
      $Res Function(_$ProductRegisterEventChangeImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ProductRegisterEventChangeImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeImageImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeImage {
  const _$ProductRegisterEventChangeImageImpl({required this.image});

  @override
  final Uint8List image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeImage(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeImage'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeImageImpl &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeImageImplCopyWith<
          _$ProductRegisterEventChangeImageImpl>
      get copyWith => __$$ProductRegisterEventChangeImageImplCopyWithImpl<
          _$ProductRegisterEventChangeImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeImage implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeImage(
      {required final Uint8List image}) = _$ProductRegisterEventChangeImageImpl;

  Uint8List get image;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeImageImplCopyWith<
          _$ProductRegisterEventChangeImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeNameImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeNameImplCopyWith(
          _$ProductRegisterEventChangeNameImpl value,
          $Res Function(_$ProductRegisterEventChangeNameImpl) then) =
      __$$ProductRegisterEventChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ProductRegisterEventChangeNameImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeNameImpl>
    implements _$$ProductRegisterEventChangeNameImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeNameImplCopyWithImpl(
      _$ProductRegisterEventChangeNameImpl _value,
      $Res Function(_$ProductRegisterEventChangeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ProductRegisterEventChangeNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeNameImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeName {
  const _$ProductRegisterEventChangeNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeNameImplCopyWith<
          _$ProductRegisterEventChangeNameImpl>
      get copyWith => __$$ProductRegisterEventChangeNameImplCopyWithImpl<
          _$ProductRegisterEventChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeName implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeName({required final String name}) =
      _$ProductRegisterEventChangeNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeNameImplCopyWith<
          _$ProductRegisterEventChangeNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeNumberImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeNumberImplCopyWith(
          _$ProductRegisterEventChangeNumberImpl value,
          $Res Function(_$ProductRegisterEventChangeNumberImpl) then) =
      __$$ProductRegisterEventChangeNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$ProductRegisterEventChangeNumberImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeNumberImpl>
    implements _$$ProductRegisterEventChangeNumberImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeNumberImplCopyWithImpl(
      _$ProductRegisterEventChangeNumberImpl _value,
      $Res Function(_$ProductRegisterEventChangeNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$ProductRegisterEventChangeNumberImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeNumberImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeNumber {
  const _$ProductRegisterEventChangeNumberImpl({required this.number});

  @override
  final String number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeNumber(number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeNumber'))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeNumberImplCopyWith<
          _$ProductRegisterEventChangeNumberImpl>
      get copyWith => __$$ProductRegisterEventChangeNumberImplCopyWithImpl<
          _$ProductRegisterEventChangeNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeNumber != null) {
      return changeNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeNumber != null) {
      return changeNumber(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeNumber
    implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeNumber(
      {required final String number}) = _$ProductRegisterEventChangeNumberImpl;

  String get number;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeNumberImplCopyWith<
          _$ProductRegisterEventChangeNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeVehicleImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeVehicleImplCopyWith(
          _$ProductRegisterEventChangeVehicleImpl value,
          $Res Function(_$ProductRegisterEventChangeVehicleImpl) then) =
      __$$ProductRegisterEventChangeVehicleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String vehicle});
}

/// @nodoc
class __$$ProductRegisterEventChangeVehicleImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeVehicleImpl>
    implements _$$ProductRegisterEventChangeVehicleImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeVehicleImplCopyWithImpl(
      _$ProductRegisterEventChangeVehicleImpl _value,
      $Res Function(_$ProductRegisterEventChangeVehicleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
  }) {
    return _then(_$ProductRegisterEventChangeVehicleImpl(
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeVehicleImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeVehicle {
  const _$ProductRegisterEventChangeVehicleImpl({required this.vehicle});

  @override
  final String vehicle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeVehicle(vehicle: $vehicle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeVehicle'))
      ..add(DiagnosticsProperty('vehicle', vehicle));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeVehicleImpl &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeVehicleImplCopyWith<
          _$ProductRegisterEventChangeVehicleImpl>
      get copyWith => __$$ProductRegisterEventChangeVehicleImplCopyWithImpl<
          _$ProductRegisterEventChangeVehicleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeVehicle(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeVehicle?.call(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeVehicle != null) {
      return changeVehicle(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeVehicle != null) {
      return changeVehicle(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeVehicle
    implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeVehicle(
          {required final String vehicle}) =
      _$ProductRegisterEventChangeVehicleImpl;

  String get vehicle;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeVehicleImplCopyWith<
          _$ProductRegisterEventChangeVehicleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeBrandImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeBrandImplCopyWith(
          _$ProductRegisterEventChangeBrandImpl value,
          $Res Function(_$ProductRegisterEventChangeBrandImpl) then) =
      __$$ProductRegisterEventChangeBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String brand});
}

/// @nodoc
class __$$ProductRegisterEventChangeBrandImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeBrandImpl>
    implements _$$ProductRegisterEventChangeBrandImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeBrandImplCopyWithImpl(
      _$ProductRegisterEventChangeBrandImpl _value,
      $Res Function(_$ProductRegisterEventChangeBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
  }) {
    return _then(_$ProductRegisterEventChangeBrandImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeBrandImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeBrand {
  const _$ProductRegisterEventChangeBrandImpl({required this.brand});

  @override
  final String brand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeBrand(brand: $brand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeBrand'))
      ..add(DiagnosticsProperty('brand', brand));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeBrandImpl &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeBrandImplCopyWith<
          _$ProductRegisterEventChangeBrandImpl>
      get copyWith => __$$ProductRegisterEventChangeBrandImplCopyWithImpl<
          _$ProductRegisterEventChangeBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeBrand(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeBrand?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeBrand != null) {
      return changeBrand(brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeBrand != null) {
      return changeBrand(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeBrand implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeBrand({required final String brand}) =
      _$ProductRegisterEventChangeBrandImpl;

  String get brand;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeBrandImplCopyWith<
          _$ProductRegisterEventChangeBrandImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangeQuantityImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangeQuantityImplCopyWith(
          _$ProductRegisterEventChangeQuantityImpl value,
          $Res Function(_$ProductRegisterEventChangeQuantityImpl) then) =
      __$$ProductRegisterEventChangeQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$ProductRegisterEventChangeQuantityImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangeQuantityImpl>
    implements _$$ProductRegisterEventChangeQuantityImplCopyWith<$Res> {
  __$$ProductRegisterEventChangeQuantityImplCopyWithImpl(
      _$ProductRegisterEventChangeQuantityImpl _value,
      $Res Function(_$ProductRegisterEventChangeQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$ProductRegisterEventChangeQuantityImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangeQuantityImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangeQuantity {
  const _$ProductRegisterEventChangeQuantityImpl({required this.quantity});

  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changeQuantity(quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changeQuantity'))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangeQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangeQuantityImplCopyWith<
          _$ProductRegisterEventChangeQuantityImpl>
      get copyWith => __$$ProductRegisterEventChangeQuantityImplCopyWithImpl<
          _$ProductRegisterEventChangeQuantityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changeQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changeQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeQuantity != null) {
      return changeQuantity(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangeQuantity
    implements ProductRegisterEvent {
  const factory ProductRegisterEventChangeQuantity(
      {required final int quantity}) = _$ProductRegisterEventChangeQuantityImpl;

  int get quantity;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangeQuantityImplCopyWith<
          _$ProductRegisterEventChangeQuantityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventChangePriceImplCopyWith<$Res> {
  factory _$$ProductRegisterEventChangePriceImplCopyWith(
          _$ProductRegisterEventChangePriceImpl value,
          $Res Function(_$ProductRegisterEventChangePriceImpl) then) =
      __$$ProductRegisterEventChangePriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$ProductRegisterEventChangePriceImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventChangePriceImpl>
    implements _$$ProductRegisterEventChangePriceImplCopyWith<$Res> {
  __$$ProductRegisterEventChangePriceImplCopyWithImpl(
      _$ProductRegisterEventChangePriceImpl _value,
      $Res Function(_$ProductRegisterEventChangePriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$ProductRegisterEventChangePriceImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventChangePriceImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventChangePrice {
  const _$ProductRegisterEventChangePriceImpl({required this.price});

  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.changePrice(price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.changePrice'))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventChangePriceImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventChangePriceImplCopyWith<
          _$ProductRegisterEventChangePriceImpl>
      get copyWith => __$$ProductRegisterEventChangePriceImplCopyWithImpl<
          _$ProductRegisterEventChangePriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changePrice(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changePrice?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return changePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return changePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changePrice != null) {
      return changePrice(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventChangePrice implements ProductRegisterEvent {
  const factory ProductRegisterEventChangePrice({required final double price}) =
      _$ProductRegisterEventChangePriceImpl;

  double get price;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventChangePriceImplCopyWith<
          _$ProductRegisterEventChangePriceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRegisterEventSaveImplCopyWith<$Res> {
  factory _$$ProductRegisterEventSaveImplCopyWith(
          _$ProductRegisterEventSaveImpl value,
          $Res Function(_$ProductRegisterEventSaveImpl) then) =
      __$$ProductRegisterEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$ProductRegisterEventSaveImplCopyWithImpl<$Res>
    extends _$ProductRegisterEventCopyWithImpl<$Res,
        _$ProductRegisterEventSaveImpl>
    implements _$$ProductRegisterEventSaveImplCopyWith<$Res> {
  __$$ProductRegisterEventSaveImplCopyWithImpl(
      _$ProductRegisterEventSaveImpl _value,
      $Res Function(_$ProductRegisterEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$ProductRegisterEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ProductRegisterEventSaveImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterEventSave {
  const _$ProductRegisterEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterEvent.save(callback: $callback)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterEvent.save'))
      ..add(DiagnosticsProperty('callback', callback));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterEventSaveImplCopyWith<_$ProductRegisterEventSaveImpl>
      get copyWith => __$$ProductRegisterEventSaveImplCopyWithImpl<
          _$ProductRegisterEventSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(Uint8List image) changeImage,
    required TResult Function(String name) changeName,
    required TResult Function(String number) changeNumber,
    required TResult Function(String vehicle) changeVehicle,
    required TResult Function(String brand) changeBrand,
    required TResult Function(int quantity) changeQuantity,
    required TResult Function(double price) changePrice,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(Uint8List image)? changeImage,
    TResult? Function(String name)? changeName,
    TResult? Function(String number)? changeNumber,
    TResult? Function(String vehicle)? changeVehicle,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(int quantity)? changeQuantity,
    TResult? Function(double price)? changePrice,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(Uint8List image)? changeImage,
    TResult Function(String name)? changeName,
    TResult Function(String number)? changeNumber,
    TResult Function(String vehicle)? changeVehicle,
    TResult Function(String brand)? changeBrand,
    TResult Function(int quantity)? changeQuantity,
    TResult Function(double price)? changePrice,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterEventLoad value) load,
    required TResult Function(ProductRegisterEventChangeImage value)
        changeImage,
    required TResult Function(ProductRegisterEventChangeName value) changeName,
    required TResult Function(ProductRegisterEventChangeNumber value)
        changeNumber,
    required TResult Function(ProductRegisterEventChangeVehicle value)
        changeVehicle,
    required TResult Function(ProductRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(ProductRegisterEventChangeQuantity value)
        changeQuantity,
    required TResult Function(ProductRegisterEventChangePrice value)
        changePrice,
    required TResult Function(ProductRegisterEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterEventLoad value)? load,
    TResult? Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult? Function(ProductRegisterEventChangeName value)? changeName,
    TResult? Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult? Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult? Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult? Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult? Function(ProductRegisterEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterEventLoad value)? load,
    TResult Function(ProductRegisterEventChangeImage value)? changeImage,
    TResult Function(ProductRegisterEventChangeName value)? changeName,
    TResult Function(ProductRegisterEventChangeNumber value)? changeNumber,
    TResult Function(ProductRegisterEventChangeVehicle value)? changeVehicle,
    TResult Function(ProductRegisterEventChangeBrand value)? changeBrand,
    TResult Function(ProductRegisterEventChangeQuantity value)? changeQuantity,
    TResult Function(ProductRegisterEventChangePrice value)? changePrice,
    TResult Function(ProductRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterEventSave implements ProductRegisterEvent {
  const factory ProductRegisterEventSave(
      {required final VoidCallback callback}) = _$ProductRegisterEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$ProductRegisterEventSaveImplCopyWith<_$ProductRegisterEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterStateEmpty value) empty,
    required TResult Function(ProductRegisterStateLoading value) loading,
    required TResult Function(ProductRegisterStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterStateEmpty value)? empty,
    TResult? Function(ProductRegisterStateLoading value)? loading,
    TResult? Function(ProductRegisterStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterStateEmpty value)? empty,
    TResult Function(ProductRegisterStateLoading value)? loading,
    TResult Function(ProductRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRegisterStateCopyWith<$Res> {
  factory $ProductRegisterStateCopyWith(ProductRegisterState value,
          $Res Function(ProductRegisterState) then) =
      _$ProductRegisterStateCopyWithImpl<$Res, ProductRegisterState>;
}

/// @nodoc
class _$ProductRegisterStateCopyWithImpl<$Res,
        $Val extends ProductRegisterState>
    implements $ProductRegisterStateCopyWith<$Res> {
  _$ProductRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductRegisterStateEmptyImplCopyWith<$Res> {
  factory _$$ProductRegisterStateEmptyImplCopyWith(
          _$ProductRegisterStateEmptyImpl value,
          $Res Function(_$ProductRegisterStateEmptyImpl) then) =
      __$$ProductRegisterStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductRegisterStateEmptyImplCopyWithImpl<$Res>
    extends _$ProductRegisterStateCopyWithImpl<$Res,
        _$ProductRegisterStateEmptyImpl>
    implements _$$ProductRegisterStateEmptyImplCopyWith<$Res> {
  __$$ProductRegisterStateEmptyImplCopyWithImpl(
      _$ProductRegisterStateEmptyImpl _value,
      $Res Function(_$ProductRegisterStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductRegisterStateEmptyImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterStateEmpty {
  const _$ProductRegisterStateEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductRegisterState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterStateEmpty value) empty,
    required TResult Function(ProductRegisterStateLoading value) loading,
    required TResult Function(ProductRegisterStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterStateEmpty value)? empty,
    TResult? Function(ProductRegisterStateLoading value)? loading,
    TResult? Function(ProductRegisterStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterStateEmpty value)? empty,
    TResult Function(ProductRegisterStateLoading value)? loading,
    TResult Function(ProductRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterStateEmpty implements ProductRegisterState {
  const factory ProductRegisterStateEmpty() = _$ProductRegisterStateEmptyImpl;
}

/// @nodoc
abstract class _$$ProductRegisterStateLoadingImplCopyWith<$Res> {
  factory _$$ProductRegisterStateLoadingImplCopyWith(
          _$ProductRegisterStateLoadingImpl value,
          $Res Function(_$ProductRegisterStateLoadingImpl) then) =
      __$$ProductRegisterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductRegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$ProductRegisterStateCopyWithImpl<$Res,
        _$ProductRegisterStateLoadingImpl>
    implements _$$ProductRegisterStateLoadingImplCopyWith<$Res> {
  __$$ProductRegisterStateLoadingImplCopyWithImpl(
      _$ProductRegisterStateLoadingImpl _value,
      $Res Function(_$ProductRegisterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductRegisterStateLoadingImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterStateLoading {
  const _$ProductRegisterStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductRegisterState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterStateEmpty value) empty,
    required TResult Function(ProductRegisterStateLoading value) loading,
    required TResult Function(ProductRegisterStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterStateEmpty value)? empty,
    TResult? Function(ProductRegisterStateLoading value)? loading,
    TResult? Function(ProductRegisterStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterStateEmpty value)? empty,
    TResult Function(ProductRegisterStateLoading value)? loading,
    TResult Function(ProductRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterStateLoading implements ProductRegisterState {
  const factory ProductRegisterStateLoading() =
      _$ProductRegisterStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProductRegisterStateLoadedImplCopyWith<$Res> {
  factory _$$ProductRegisterStateLoadedImplCopyWith(
          _$ProductRegisterStateLoadedImpl value,
          $Res Function(_$ProductRegisterStateLoadedImpl) then) =
      __$$ProductRegisterStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CrudType type,
      Product product,
      Uint8List? image,
      List<Vehicle> vehicles,
      List<Brand> brands});

  $CrudTypeCopyWith<$Res> get type;
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductRegisterStateLoadedImplCopyWithImpl<$Res>
    extends _$ProductRegisterStateCopyWithImpl<$Res,
        _$ProductRegisterStateLoadedImpl>
    implements _$$ProductRegisterStateLoadedImplCopyWith<$Res> {
  __$$ProductRegisterStateLoadedImplCopyWithImpl(
      _$ProductRegisterStateLoadedImpl _value,
      $Res Function(_$ProductRegisterStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? product = null,
    Object? image = freezed,
    Object? vehicles = null,
    Object? brands = null,
  }) {
    return _then(_$ProductRegisterStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CrudTypeCopyWith<$Res> get type {
    return $CrudTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductRegisterStateLoadedImpl
    with DiagnosticableTreeMixin
    implements ProductRegisterStateLoaded {
  const _$ProductRegisterStateLoadedImpl(
      {required this.type,
      required this.product,
      this.image,
      required final List<Vehicle> vehicles,
      required final List<Brand> brands})
      : _vehicles = vehicles,
        _brands = brands;

  @override
  final CrudType type;
  @override
  final Product product;
  @override
  final Uint8List? image;
  final List<Vehicle> _vehicles;
  @override
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  final List<Brand> _brands;
  @override
  List<Brand> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductRegisterState.loaded(type: $type, product: $product, image: $image, vehicles: $vehicles, brands: $brands)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductRegisterState.loaded'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('vehicles', vehicles))
      ..add(DiagnosticsProperty('brands', brands));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRegisterStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles) &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      product,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_vehicles),
      const DeepCollectionEquality().hash(_brands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRegisterStateLoadedImplCopyWith<_$ProductRegisterStateLoadedImpl>
      get copyWith => __$$ProductRegisterStateLoadedImplCopyWithImpl<
          _$ProductRegisterStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)
        loaded,
  }) {
    return loaded(type, product, image, vehicles, brands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
  }) {
    return loaded?.call(type, product, image, vehicles, brands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Product product, Uint8List? image,
            List<Vehicle> vehicles, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, product, image, vehicles, brands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductRegisterStateEmpty value) empty,
    required TResult Function(ProductRegisterStateLoading value) loading,
    required TResult Function(ProductRegisterStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductRegisterStateEmpty value)? empty,
    TResult? Function(ProductRegisterStateLoading value)? loading,
    TResult? Function(ProductRegisterStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductRegisterStateEmpty value)? empty,
    TResult Function(ProductRegisterStateLoading value)? loading,
    TResult Function(ProductRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductRegisterStateLoaded implements ProductRegisterState {
  const factory ProductRegisterStateLoaded(
      {required final CrudType type,
      required final Product product,
      final Uint8List? image,
      required final List<Vehicle> vehicles,
      required final List<Brand> brands}) = _$ProductRegisterStateLoadedImpl;

  CrudType get type;
  Product get product;
  Uint8List? get image;
  List<Vehicle> get vehicles;
  List<Brand> get brands;
  @JsonKey(ignore: true)
  _$$ProductRegisterStateLoadedImplCopyWith<_$ProductRegisterStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
