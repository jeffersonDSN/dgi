// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleRegisterEventCopyWith<$Res> {
  factory $VehicleRegisterEventCopyWith(VehicleRegisterEvent value,
          $Res Function(VehicleRegisterEvent) then) =
      _$VehicleRegisterEventCopyWithImpl<$Res, VehicleRegisterEvent>;
}

/// @nodoc
class _$VehicleRegisterEventCopyWithImpl<$Res,
        $Val extends VehicleRegisterEvent>
    implements $VehicleRegisterEventCopyWith<$Res> {
  _$VehicleRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleRegisterEventLoadImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventLoadImplCopyWith(
          _$VehicleRegisterEventLoadImpl value,
          $Res Function(_$VehicleRegisterEventLoadImpl) then) =
      __$$VehicleRegisterEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$VehicleRegisterEventLoadImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventLoadImpl>
    implements _$$VehicleRegisterEventLoadImplCopyWith<$Res> {
  __$$VehicleRegisterEventLoadImplCopyWithImpl(
      _$VehicleRegisterEventLoadImpl _value,
      $Res Function(_$VehicleRegisterEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$VehicleRegisterEventLoadImpl(
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

class _$VehicleRegisterEventLoadImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventLoad {
  const _$VehicleRegisterEventLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.load(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.load'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventLoadImplCopyWith<_$VehicleRegisterEventLoadImpl>
      get copyWith => __$$VehicleRegisterEventLoadImplCopyWithImpl<
          _$VehicleRegisterEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
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
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventLoad implements VehicleRegisterEvent {
  const factory VehicleRegisterEventLoad({required final CrudType type}) =
      _$VehicleRegisterEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventLoadImplCopyWith<_$VehicleRegisterEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventChangeNameImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventChangeNameImplCopyWith(
          _$VehicleRegisterEventChangeNameImpl value,
          $Res Function(_$VehicleRegisterEventChangeNameImpl) then) =
      __$$VehicleRegisterEventChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$VehicleRegisterEventChangeNameImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventChangeNameImpl>
    implements _$$VehicleRegisterEventChangeNameImplCopyWith<$Res> {
  __$$VehicleRegisterEventChangeNameImplCopyWithImpl(
      _$VehicleRegisterEventChangeNameImpl _value,
      $Res Function(_$VehicleRegisterEventChangeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$VehicleRegisterEventChangeNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventChangeNameImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventChangeName {
  const _$VehicleRegisterEventChangeNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.changeName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.changeName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventChangeNameImplCopyWith<
          _$VehicleRegisterEventChangeNameImpl>
      get copyWith => __$$VehicleRegisterEventChangeNameImplCopyWithImpl<
          _$VehicleRegisterEventChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
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
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventChangeName implements VehicleRegisterEvent {
  const factory VehicleRegisterEventChangeName({required final String name}) =
      _$VehicleRegisterEventChangeNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventChangeNameImplCopyWith<
          _$VehicleRegisterEventChangeNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventChangeModelImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventChangeModelImplCopyWith(
          _$VehicleRegisterEventChangeModelImpl value,
          $Res Function(_$VehicleRegisterEventChangeModelImpl) then) =
      __$$VehicleRegisterEventChangeModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String model});
}

/// @nodoc
class __$$VehicleRegisterEventChangeModelImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventChangeModelImpl>
    implements _$$VehicleRegisterEventChangeModelImplCopyWith<$Res> {
  __$$VehicleRegisterEventChangeModelImplCopyWithImpl(
      _$VehicleRegisterEventChangeModelImpl _value,
      $Res Function(_$VehicleRegisterEventChangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$VehicleRegisterEventChangeModelImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventChangeModelImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventChangeModel {
  const _$VehicleRegisterEventChangeModelImpl({required this.model});

  @override
  final String model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.changeModel(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.changeModel'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventChangeModelImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventChangeModelImplCopyWith<
          _$VehicleRegisterEventChangeModelImpl>
      get copyWith => __$$VehicleRegisterEventChangeModelImplCopyWithImpl<
          _$VehicleRegisterEventChangeModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeModel(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeModel?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeModel != null) {
      return changeModel(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return changeModel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return changeModel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeModel != null) {
      return changeModel(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventChangeModel implements VehicleRegisterEvent {
  const factory VehicleRegisterEventChangeModel({required final String model}) =
      _$VehicleRegisterEventChangeModelImpl;

  String get model;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventChangeModelImplCopyWith<
          _$VehicleRegisterEventChangeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventChangeFromYearImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventChangeFromYearImplCopyWith(
          _$VehicleRegisterEventChangeFromYearImpl value,
          $Res Function(_$VehicleRegisterEventChangeFromYearImpl) then) =
      __$$VehicleRegisterEventChangeFromYearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromYear});
}

/// @nodoc
class __$$VehicleRegisterEventChangeFromYearImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventChangeFromYearImpl>
    implements _$$VehicleRegisterEventChangeFromYearImplCopyWith<$Res> {
  __$$VehicleRegisterEventChangeFromYearImplCopyWithImpl(
      _$VehicleRegisterEventChangeFromYearImpl _value,
      $Res Function(_$VehicleRegisterEventChangeFromYearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromYear = null,
  }) {
    return _then(_$VehicleRegisterEventChangeFromYearImpl(
      fromYear: null == fromYear
          ? _value.fromYear
          : fromYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventChangeFromYearImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventChangeFromYear {
  const _$VehicleRegisterEventChangeFromYearImpl({required this.fromYear});

  @override
  final String fromYear;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.changeFromYear(fromYear: $fromYear)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.changeFromYear'))
      ..add(DiagnosticsProperty('fromYear', fromYear));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventChangeFromYearImpl &&
            (identical(other.fromYear, fromYear) ||
                other.fromYear == fromYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventChangeFromYearImplCopyWith<
          _$VehicleRegisterEventChangeFromYearImpl>
      get copyWith => __$$VehicleRegisterEventChangeFromYearImplCopyWithImpl<
          _$VehicleRegisterEventChangeFromYearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeFromYear(fromYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeFromYear?.call(fromYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeFromYear != null) {
      return changeFromYear(fromYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return changeFromYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return changeFromYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeFromYear != null) {
      return changeFromYear(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventChangeFromYear
    implements VehicleRegisterEvent {
  const factory VehicleRegisterEventChangeFromYear(
          {required final String fromYear}) =
      _$VehicleRegisterEventChangeFromYearImpl;

  String get fromYear;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventChangeFromYearImplCopyWith<
          _$VehicleRegisterEventChangeFromYearImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventChangeToYearImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventChangeToYearImplCopyWith(
          _$VehicleRegisterEventChangeToYearImpl value,
          $Res Function(_$VehicleRegisterEventChangeToYearImpl) then) =
      __$$VehicleRegisterEventChangeToYearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String toYear});
}

/// @nodoc
class __$$VehicleRegisterEventChangeToYearImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventChangeToYearImpl>
    implements _$$VehicleRegisterEventChangeToYearImplCopyWith<$Res> {
  __$$VehicleRegisterEventChangeToYearImplCopyWithImpl(
      _$VehicleRegisterEventChangeToYearImpl _value,
      $Res Function(_$VehicleRegisterEventChangeToYearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toYear = null,
  }) {
    return _then(_$VehicleRegisterEventChangeToYearImpl(
      toYear: null == toYear
          ? _value.toYear
          : toYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventChangeToYearImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventChangeToYear {
  const _$VehicleRegisterEventChangeToYearImpl({required this.toYear});

  @override
  final String toYear;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.changeToYear(toYear: $toYear)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.changeToYear'))
      ..add(DiagnosticsProperty('toYear', toYear));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventChangeToYearImpl &&
            (identical(other.toYear, toYear) || other.toYear == toYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventChangeToYearImplCopyWith<
          _$VehicleRegisterEventChangeToYearImpl>
      get copyWith => __$$VehicleRegisterEventChangeToYearImplCopyWithImpl<
          _$VehicleRegisterEventChangeToYearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeToYear(toYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeToYear?.call(toYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) {
    if (changeToYear != null) {
      return changeToYear(toYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return changeToYear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return changeToYear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeToYear != null) {
      return changeToYear(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventChangeToYear
    implements VehicleRegisterEvent {
  const factory VehicleRegisterEventChangeToYear(
      {required final String toYear}) = _$VehicleRegisterEventChangeToYearImpl;

  String get toYear;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventChangeToYearImplCopyWith<
          _$VehicleRegisterEventChangeToYearImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventChangeBrandImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventChangeBrandImplCopyWith(
          _$VehicleRegisterEventChangeBrandImpl value,
          $Res Function(_$VehicleRegisterEventChangeBrandImpl) then) =
      __$$VehicleRegisterEventChangeBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String brand});
}

/// @nodoc
class __$$VehicleRegisterEventChangeBrandImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventChangeBrandImpl>
    implements _$$VehicleRegisterEventChangeBrandImplCopyWith<$Res> {
  __$$VehicleRegisterEventChangeBrandImplCopyWithImpl(
      _$VehicleRegisterEventChangeBrandImpl _value,
      $Res Function(_$VehicleRegisterEventChangeBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
  }) {
    return _then(_$VehicleRegisterEventChangeBrandImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventChangeBrandImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventChangeBrand {
  const _$VehicleRegisterEventChangeBrandImpl({required this.brand});

  @override
  final String brand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.changeBrand(brand: $brand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.changeBrand'))
      ..add(DiagnosticsProperty('brand', brand));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventChangeBrandImpl &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventChangeBrandImplCopyWith<
          _$VehicleRegisterEventChangeBrandImpl>
      get copyWith => __$$VehicleRegisterEventChangeBrandImplCopyWithImpl<
          _$VehicleRegisterEventChangeBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeBrand(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeBrand?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
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
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return changeBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return changeBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeBrand != null) {
      return changeBrand(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventChangeBrand implements VehicleRegisterEvent {
  const factory VehicleRegisterEventChangeBrand({required final String brand}) =
      _$VehicleRegisterEventChangeBrandImpl;

  String get brand;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventChangeBrandImplCopyWith<
          _$VehicleRegisterEventChangeBrandImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleRegisterEventSaveImplCopyWith<$Res> {
  factory _$$VehicleRegisterEventSaveImplCopyWith(
          _$VehicleRegisterEventSaveImpl value,
          $Res Function(_$VehicleRegisterEventSaveImpl) then) =
      __$$VehicleRegisterEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$VehicleRegisterEventSaveImplCopyWithImpl<$Res>
    extends _$VehicleRegisterEventCopyWithImpl<$Res,
        _$VehicleRegisterEventSaveImpl>
    implements _$$VehicleRegisterEventSaveImplCopyWith<$Res> {
  __$$VehicleRegisterEventSaveImplCopyWithImpl(
      _$VehicleRegisterEventSaveImpl _value,
      $Res Function(_$VehicleRegisterEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$VehicleRegisterEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$VehicleRegisterEventSaveImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterEventSave {
  const _$VehicleRegisterEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterEvent.save(callback: $callback)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterEvent.save'))
      ..add(DiagnosticsProperty('callback', callback));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterEventSaveImplCopyWith<_$VehicleRegisterEventSaveImpl>
      get copyWith => __$$VehicleRegisterEventSaveImplCopyWithImpl<
          _$VehicleRegisterEventSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(String model) changeModel,
    required TResult Function(String fromYear) changeFromYear,
    required TResult Function(String toYear) changeToYear,
    required TResult Function(String brand) changeBrand,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(String model)? changeModel,
    TResult? Function(String fromYear)? changeFromYear,
    TResult? Function(String toYear)? changeToYear,
    TResult? Function(String brand)? changeBrand,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(String model)? changeModel,
    TResult Function(String fromYear)? changeFromYear,
    TResult Function(String toYear)? changeToYear,
    TResult Function(String brand)? changeBrand,
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
    required TResult Function(VehicleRegisterEventLoad value) load,
    required TResult Function(VehicleRegisterEventChangeName value) changeName,
    required TResult Function(VehicleRegisterEventChangeModel value)
        changeModel,
    required TResult Function(VehicleRegisterEventChangeFromYear value)
        changeFromYear,
    required TResult Function(VehicleRegisterEventChangeToYear value)
        changeToYear,
    required TResult Function(VehicleRegisterEventChangeBrand value)
        changeBrand,
    required TResult Function(VehicleRegisterEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterEventLoad value)? load,
    TResult? Function(VehicleRegisterEventChangeName value)? changeName,
    TResult? Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult? Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult? Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult? Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult? Function(VehicleRegisterEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterEventLoad value)? load,
    TResult Function(VehicleRegisterEventChangeName value)? changeName,
    TResult Function(VehicleRegisterEventChangeModel value)? changeModel,
    TResult Function(VehicleRegisterEventChangeFromYear value)? changeFromYear,
    TResult Function(VehicleRegisterEventChangeToYear value)? changeToYear,
    TResult Function(VehicleRegisterEventChangeBrand value)? changeBrand,
    TResult Function(VehicleRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterEventSave implements VehicleRegisterEvent {
  const factory VehicleRegisterEventSave(
      {required final VoidCallback callback}) = _$VehicleRegisterEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$VehicleRegisterEventSaveImplCopyWith<_$VehicleRegisterEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VehicleRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Vehicle vehicle, List<Brand> brands)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterStateEmpty value) empty,
    required TResult Function(VehicleRegisterStateLoading value) loading,
    required TResult Function(VehicleRegisterStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterStateEmpty value)? empty,
    TResult? Function(VehicleRegisterStateLoading value)? loading,
    TResult? Function(VehicleRegisterStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterStateEmpty value)? empty,
    TResult Function(VehicleRegisterStateLoading value)? loading,
    TResult Function(VehicleRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleRegisterStateCopyWith<$Res> {
  factory $VehicleRegisterStateCopyWith(VehicleRegisterState value,
          $Res Function(VehicleRegisterState) then) =
      _$VehicleRegisterStateCopyWithImpl<$Res, VehicleRegisterState>;
}

/// @nodoc
class _$VehicleRegisterStateCopyWithImpl<$Res,
        $Val extends VehicleRegisterState>
    implements $VehicleRegisterStateCopyWith<$Res> {
  _$VehicleRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleRegisterStateEmptyImplCopyWith<$Res> {
  factory _$$VehicleRegisterStateEmptyImplCopyWith(
          _$VehicleRegisterStateEmptyImpl value,
          $Res Function(_$VehicleRegisterStateEmptyImpl) then) =
      __$$VehicleRegisterStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleRegisterStateEmptyImplCopyWithImpl<$Res>
    extends _$VehicleRegisterStateCopyWithImpl<$Res,
        _$VehicleRegisterStateEmptyImpl>
    implements _$$VehicleRegisterStateEmptyImplCopyWith<$Res> {
  __$$VehicleRegisterStateEmptyImplCopyWithImpl(
      _$VehicleRegisterStateEmptyImpl _value,
      $Res Function(_$VehicleRegisterStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleRegisterStateEmptyImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterStateEmpty {
  const _$VehicleRegisterStateEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'VehicleRegisterState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Vehicle vehicle, List<Brand> brands)
        loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
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
    required TResult Function(VehicleRegisterStateEmpty value) empty,
    required TResult Function(VehicleRegisterStateLoading value) loading,
    required TResult Function(VehicleRegisterStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterStateEmpty value)? empty,
    TResult? Function(VehicleRegisterStateLoading value)? loading,
    TResult? Function(VehicleRegisterStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterStateEmpty value)? empty,
    TResult Function(VehicleRegisterStateLoading value)? loading,
    TResult Function(VehicleRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterStateEmpty implements VehicleRegisterState {
  const factory VehicleRegisterStateEmpty() = _$VehicleRegisterStateEmptyImpl;
}

/// @nodoc
abstract class _$$VehicleRegisterStateLoadingImplCopyWith<$Res> {
  factory _$$VehicleRegisterStateLoadingImplCopyWith(
          _$VehicleRegisterStateLoadingImpl value,
          $Res Function(_$VehicleRegisterStateLoadingImpl) then) =
      __$$VehicleRegisterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleRegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$VehicleRegisterStateCopyWithImpl<$Res,
        _$VehicleRegisterStateLoadingImpl>
    implements _$$VehicleRegisterStateLoadingImplCopyWith<$Res> {
  __$$VehicleRegisterStateLoadingImplCopyWithImpl(
      _$VehicleRegisterStateLoadingImpl _value,
      $Res Function(_$VehicleRegisterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleRegisterStateLoadingImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterStateLoading {
  const _$VehicleRegisterStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'VehicleRegisterState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Vehicle vehicle, List<Brand> brands)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
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
    required TResult Function(VehicleRegisterStateEmpty value) empty,
    required TResult Function(VehicleRegisterStateLoading value) loading,
    required TResult Function(VehicleRegisterStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterStateEmpty value)? empty,
    TResult? Function(VehicleRegisterStateLoading value)? loading,
    TResult? Function(VehicleRegisterStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterStateEmpty value)? empty,
    TResult Function(VehicleRegisterStateLoading value)? loading,
    TResult Function(VehicleRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterStateLoading implements VehicleRegisterState {
  const factory VehicleRegisterStateLoading() =
      _$VehicleRegisterStateLoadingImpl;
}

/// @nodoc
abstract class _$$VehicleRegisterStateLoadedImplCopyWith<$Res> {
  factory _$$VehicleRegisterStateLoadedImplCopyWith(
          _$VehicleRegisterStateLoadedImpl value,
          $Res Function(_$VehicleRegisterStateLoadedImpl) then) =
      __$$VehicleRegisterStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type, Vehicle vehicle, List<Brand> brands});

  $CrudTypeCopyWith<$Res> get type;
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$VehicleRegisterStateLoadedImplCopyWithImpl<$Res>
    extends _$VehicleRegisterStateCopyWithImpl<$Res,
        _$VehicleRegisterStateLoadedImpl>
    implements _$$VehicleRegisterStateLoadedImplCopyWith<$Res> {
  __$$VehicleRegisterStateLoadedImplCopyWithImpl(
      _$VehicleRegisterStateLoadedImpl _value,
      $Res Function(_$VehicleRegisterStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? vehicle = null,
    Object? brands = null,
  }) {
    return _then(_$VehicleRegisterStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
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
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc

class _$VehicleRegisterStateLoadedImpl
    with DiagnosticableTreeMixin
    implements VehicleRegisterStateLoaded {
  const _$VehicleRegisterStateLoadedImpl(
      {required this.type,
      required this.vehicle,
      required final List<Brand> brands})
      : _brands = brands;

  @override
  final CrudType type;
  @override
  final Vehicle vehicle;
  final List<Brand> _brands;
  @override
  List<Brand> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VehicleRegisterState.loaded(type: $type, vehicle: $vehicle, brands: $brands)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VehicleRegisterState.loaded'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('vehicle', vehicle))
      ..add(DiagnosticsProperty('brands', brands));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleRegisterStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, vehicle, const DeepCollectionEquality().hash(_brands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleRegisterStateLoadedImplCopyWith<_$VehicleRegisterStateLoadedImpl>
      get copyWith => __$$VehicleRegisterStateLoadedImplCopyWithImpl<
          _$VehicleRegisterStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(
            CrudType type, Vehicle vehicle, List<Brand> brands)
        loaded,
  }) {
    return loaded(type, vehicle, brands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
  }) {
    return loaded?.call(type, vehicle, brands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Vehicle vehicle, List<Brand> brands)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, vehicle, brands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleRegisterStateEmpty value) empty,
    required TResult Function(VehicleRegisterStateLoading value) loading,
    required TResult Function(VehicleRegisterStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleRegisterStateEmpty value)? empty,
    TResult? Function(VehicleRegisterStateLoading value)? loading,
    TResult? Function(VehicleRegisterStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleRegisterStateEmpty value)? empty,
    TResult Function(VehicleRegisterStateLoading value)? loading,
    TResult Function(VehicleRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VehicleRegisterStateLoaded implements VehicleRegisterState {
  const factory VehicleRegisterStateLoaded(
      {required final CrudType type,
      required final Vehicle vehicle,
      required final List<Brand> brands}) = _$VehicleRegisterStateLoadedImpl;

  CrudType get type;
  Vehicle get vehicle;
  List<Brand> get brands;
  @JsonKey(ignore: true)
  _$$VehicleRegisterStateLoadedImplCopyWith<_$VehicleRegisterStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
