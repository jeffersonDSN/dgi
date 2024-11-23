// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(VoidCallback callback) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(VoidCallback callback)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
    TResult Function(VoidCallback callback)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrandRegisterEventLoad value) load,
    required TResult Function(BrandRegisterEventChangeName value) changeName,
    required TResult Function(BrandRegisterEventSave value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterEventLoad value)? load,
    TResult? Function(BrandRegisterEventChangeName value)? changeName,
    TResult? Function(BrandRegisterEventSave value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterEventLoad value)? load,
    TResult Function(BrandRegisterEventChangeName value)? changeName,
    TResult Function(BrandRegisterEventSave value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandRegisterEventCopyWith<$Res> {
  factory $BrandRegisterEventCopyWith(
          BrandRegisterEvent value, $Res Function(BrandRegisterEvent) then) =
      _$BrandRegisterEventCopyWithImpl<$Res, BrandRegisterEvent>;
}

/// @nodoc
class _$BrandRegisterEventCopyWithImpl<$Res, $Val extends BrandRegisterEvent>
    implements $BrandRegisterEventCopyWith<$Res> {
  _$BrandRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BrandRegisterEventLoadImplCopyWith<$Res> {
  factory _$$BrandRegisterEventLoadImplCopyWith(
          _$BrandRegisterEventLoadImpl value,
          $Res Function(_$BrandRegisterEventLoadImpl) then) =
      __$$BrandRegisterEventLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type});

  $CrudTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$BrandRegisterEventLoadImplCopyWithImpl<$Res>
    extends _$BrandRegisterEventCopyWithImpl<$Res, _$BrandRegisterEventLoadImpl>
    implements _$$BrandRegisterEventLoadImplCopyWith<$Res> {
  __$$BrandRegisterEventLoadImplCopyWithImpl(
      _$BrandRegisterEventLoadImpl _value,
      $Res Function(_$BrandRegisterEventLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$BrandRegisterEventLoadImpl(
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

class _$BrandRegisterEventLoadImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterEventLoad {
  const _$BrandRegisterEventLoadImpl({required this.type});

  @override
  final CrudType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterEvent.load(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrandRegisterEvent.load'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterEventLoadImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandRegisterEventLoadImplCopyWith<_$BrandRegisterEventLoadImpl>
      get copyWith => __$$BrandRegisterEventLoadImplCopyWithImpl<
          _$BrandRegisterEventLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(VoidCallback callback) save,
  }) {
    return load(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return load?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
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
    required TResult Function(BrandRegisterEventLoad value) load,
    required TResult Function(BrandRegisterEventChangeName value) changeName,
    required TResult Function(BrandRegisterEventSave value) save,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterEventLoad value)? load,
    TResult? Function(BrandRegisterEventChangeName value)? changeName,
    TResult? Function(BrandRegisterEventSave value)? save,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterEventLoad value)? load,
    TResult Function(BrandRegisterEventChangeName value)? changeName,
    TResult Function(BrandRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterEventLoad implements BrandRegisterEvent {
  const factory BrandRegisterEventLoad({required final CrudType type}) =
      _$BrandRegisterEventLoadImpl;

  CrudType get type;
  @JsonKey(ignore: true)
  _$$BrandRegisterEventLoadImplCopyWith<_$BrandRegisterEventLoadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BrandRegisterEventChangeNameImplCopyWith<$Res> {
  factory _$$BrandRegisterEventChangeNameImplCopyWith(
          _$BrandRegisterEventChangeNameImpl value,
          $Res Function(_$BrandRegisterEventChangeNameImpl) then) =
      __$$BrandRegisterEventChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$BrandRegisterEventChangeNameImplCopyWithImpl<$Res>
    extends _$BrandRegisterEventCopyWithImpl<$Res,
        _$BrandRegisterEventChangeNameImpl>
    implements _$$BrandRegisterEventChangeNameImplCopyWith<$Res> {
  __$$BrandRegisterEventChangeNameImplCopyWithImpl(
      _$BrandRegisterEventChangeNameImpl _value,
      $Res Function(_$BrandRegisterEventChangeNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BrandRegisterEventChangeNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BrandRegisterEventChangeNameImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterEventChangeName {
  const _$BrandRegisterEventChangeNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterEvent.changeName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrandRegisterEvent.changeName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterEventChangeNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandRegisterEventChangeNameImplCopyWith<
          _$BrandRegisterEventChangeNameImpl>
      get copyWith => __$$BrandRegisterEventChangeNameImplCopyWithImpl<
          _$BrandRegisterEventChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(VoidCallback callback) save,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
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
    required TResult Function(BrandRegisterEventLoad value) load,
    required TResult Function(BrandRegisterEventChangeName value) changeName,
    required TResult Function(BrandRegisterEventSave value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterEventLoad value)? load,
    TResult? Function(BrandRegisterEventChangeName value)? changeName,
    TResult? Function(BrandRegisterEventSave value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterEventLoad value)? load,
    TResult Function(BrandRegisterEventChangeName value)? changeName,
    TResult Function(BrandRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterEventChangeName implements BrandRegisterEvent {
  const factory BrandRegisterEventChangeName({required final String name}) =
      _$BrandRegisterEventChangeNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$BrandRegisterEventChangeNameImplCopyWith<
          _$BrandRegisterEventChangeNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BrandRegisterEventSaveImplCopyWith<$Res> {
  factory _$$BrandRegisterEventSaveImplCopyWith(
          _$BrandRegisterEventSaveImpl value,
          $Res Function(_$BrandRegisterEventSaveImpl) then) =
      __$$BrandRegisterEventSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback callback});
}

/// @nodoc
class __$$BrandRegisterEventSaveImplCopyWithImpl<$Res>
    extends _$BrandRegisterEventCopyWithImpl<$Res, _$BrandRegisterEventSaveImpl>
    implements _$$BrandRegisterEventSaveImplCopyWith<$Res> {
  __$$BrandRegisterEventSaveImplCopyWithImpl(
      _$BrandRegisterEventSaveImpl _value,
      $Res Function(_$BrandRegisterEventSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$BrandRegisterEventSaveImpl(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$BrandRegisterEventSaveImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterEventSave {
  const _$BrandRegisterEventSaveImpl({required this.callback});

  @override
  final VoidCallback callback;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterEvent.save(callback: $callback)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrandRegisterEvent.save'))
      ..add(DiagnosticsProperty('callback', callback));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterEventSaveImpl &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandRegisterEventSaveImplCopyWith<_$BrandRegisterEventSaveImpl>
      get copyWith => __$$BrandRegisterEventSaveImplCopyWithImpl<
          _$BrandRegisterEventSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CrudType type) load,
    required TResult Function(String name) changeName,
    required TResult Function(VoidCallback callback) save,
  }) {
    return save(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CrudType type)? load,
    TResult? Function(String name)? changeName,
    TResult? Function(VoidCallback callback)? save,
  }) {
    return save?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CrudType type)? load,
    TResult Function(String name)? changeName,
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
    required TResult Function(BrandRegisterEventLoad value) load,
    required TResult Function(BrandRegisterEventChangeName value) changeName,
    required TResult Function(BrandRegisterEventSave value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterEventLoad value)? load,
    TResult? Function(BrandRegisterEventChangeName value)? changeName,
    TResult? Function(BrandRegisterEventSave value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterEventLoad value)? load,
    TResult Function(BrandRegisterEventChangeName value)? changeName,
    TResult Function(BrandRegisterEventSave value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterEventSave implements BrandRegisterEvent {
  const factory BrandRegisterEventSave({required final VoidCallback callback}) =
      _$BrandRegisterEventSaveImpl;

  VoidCallback get callback;
  @JsonKey(ignore: true)
  _$$BrandRegisterEventSaveImplCopyWith<_$BrandRegisterEventSaveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Brand brand) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Brand brand)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Brand brand)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrandRegisterStateEmpty value) empty,
    required TResult Function(BrandRegisterStateLoading value) loading,
    required TResult Function(BrandRegisterStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterStateEmpty value)? empty,
    TResult? Function(BrandRegisterStateLoading value)? loading,
    TResult? Function(BrandRegisterStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterStateEmpty value)? empty,
    TResult Function(BrandRegisterStateLoading value)? loading,
    TResult Function(BrandRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandRegisterStateCopyWith<$Res> {
  factory $BrandRegisterStateCopyWith(
          BrandRegisterState value, $Res Function(BrandRegisterState) then) =
      _$BrandRegisterStateCopyWithImpl<$Res, BrandRegisterState>;
}

/// @nodoc
class _$BrandRegisterStateCopyWithImpl<$Res, $Val extends BrandRegisterState>
    implements $BrandRegisterStateCopyWith<$Res> {
  _$BrandRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BrandRegisterStateEmptyImplCopyWith<$Res> {
  factory _$$BrandRegisterStateEmptyImplCopyWith(
          _$BrandRegisterStateEmptyImpl value,
          $Res Function(_$BrandRegisterStateEmptyImpl) then) =
      __$$BrandRegisterStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BrandRegisterStateEmptyImplCopyWithImpl<$Res>
    extends _$BrandRegisterStateCopyWithImpl<$Res,
        _$BrandRegisterStateEmptyImpl>
    implements _$$BrandRegisterStateEmptyImplCopyWith<$Res> {
  __$$BrandRegisterStateEmptyImplCopyWithImpl(
      _$BrandRegisterStateEmptyImpl _value,
      $Res Function(_$BrandRegisterStateEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BrandRegisterStateEmptyImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterStateEmpty {
  const _$BrandRegisterStateEmptyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BrandRegisterState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Brand brand) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Brand brand)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Brand brand)? loaded,
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
    required TResult Function(BrandRegisterStateEmpty value) empty,
    required TResult Function(BrandRegisterStateLoading value) loading,
    required TResult Function(BrandRegisterStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterStateEmpty value)? empty,
    TResult? Function(BrandRegisterStateLoading value)? loading,
    TResult? Function(BrandRegisterStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterStateEmpty value)? empty,
    TResult Function(BrandRegisterStateLoading value)? loading,
    TResult Function(BrandRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterStateEmpty implements BrandRegisterState {
  const factory BrandRegisterStateEmpty() = _$BrandRegisterStateEmptyImpl;
}

/// @nodoc
abstract class _$$BrandRegisterStateLoadingImplCopyWith<$Res> {
  factory _$$BrandRegisterStateLoadingImplCopyWith(
          _$BrandRegisterStateLoadingImpl value,
          $Res Function(_$BrandRegisterStateLoadingImpl) then) =
      __$$BrandRegisterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BrandRegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$BrandRegisterStateCopyWithImpl<$Res,
        _$BrandRegisterStateLoadingImpl>
    implements _$$BrandRegisterStateLoadingImplCopyWith<$Res> {
  __$$BrandRegisterStateLoadingImplCopyWithImpl(
      _$BrandRegisterStateLoadingImpl _value,
      $Res Function(_$BrandRegisterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BrandRegisterStateLoadingImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterStateLoading {
  const _$BrandRegisterStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BrandRegisterState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Brand brand) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Brand brand)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Brand brand)? loaded,
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
    required TResult Function(BrandRegisterStateEmpty value) empty,
    required TResult Function(BrandRegisterStateLoading value) loading,
    required TResult Function(BrandRegisterStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterStateEmpty value)? empty,
    TResult? Function(BrandRegisterStateLoading value)? loading,
    TResult? Function(BrandRegisterStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterStateEmpty value)? empty,
    TResult Function(BrandRegisterStateLoading value)? loading,
    TResult Function(BrandRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterStateLoading implements BrandRegisterState {
  const factory BrandRegisterStateLoading() = _$BrandRegisterStateLoadingImpl;
}

/// @nodoc
abstract class _$$BrandRegisterStateLoadedImplCopyWith<$Res> {
  factory _$$BrandRegisterStateLoadedImplCopyWith(
          _$BrandRegisterStateLoadedImpl value,
          $Res Function(_$BrandRegisterStateLoadedImpl) then) =
      __$$BrandRegisterStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CrudType type, Brand brand});

  $CrudTypeCopyWith<$Res> get type;
  $BrandCopyWith<$Res> get brand;
}

/// @nodoc
class __$$BrandRegisterStateLoadedImplCopyWithImpl<$Res>
    extends _$BrandRegisterStateCopyWithImpl<$Res,
        _$BrandRegisterStateLoadedImpl>
    implements _$$BrandRegisterStateLoadedImplCopyWith<$Res> {
  __$$BrandRegisterStateLoadedImplCopyWithImpl(
      _$BrandRegisterStateLoadedImpl _value,
      $Res Function(_$BrandRegisterStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? brand = null,
  }) {
    return _then(_$BrandRegisterStateLoadedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CrudType,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
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
  $BrandCopyWith<$Res> get brand {
    return $BrandCopyWith<$Res>(_value.brand, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }
}

/// @nodoc

class _$BrandRegisterStateLoadedImpl
    with DiagnosticableTreeMixin
    implements BrandRegisterStateLoaded {
  const _$BrandRegisterStateLoadedImpl(
      {required this.type, required this.brand});

  @override
  final CrudType type;
  @override
  final Brand brand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandRegisterState.loaded(type: $type, brand: $brand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrandRegisterState.loaded'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('brand', brand));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandRegisterStateLoadedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandRegisterStateLoadedImplCopyWith<_$BrandRegisterStateLoadedImpl>
      get copyWith => __$$BrandRegisterStateLoadedImplCopyWithImpl<
          _$BrandRegisterStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(CrudType type, Brand brand) loaded,
  }) {
    return loaded(type, brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(CrudType type, Brand brand)? loaded,
  }) {
    return loaded?.call(type, brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(CrudType type, Brand brand)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(type, brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BrandRegisterStateEmpty value) empty,
    required TResult Function(BrandRegisterStateLoading value) loading,
    required TResult Function(BrandRegisterStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BrandRegisterStateEmpty value)? empty,
    TResult? Function(BrandRegisterStateLoading value)? loading,
    TResult? Function(BrandRegisterStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BrandRegisterStateEmpty value)? empty,
    TResult Function(BrandRegisterStateLoading value)? loading,
    TResult Function(BrandRegisterStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BrandRegisterStateLoaded implements BrandRegisterState {
  const factory BrandRegisterStateLoaded(
      {required final CrudType type,
      required final Brand brand}) = _$BrandRegisterStateLoadedImpl;

  CrudType get type;
  Brand get brand;
  @JsonKey(ignore: true)
  _$$BrandRegisterStateLoadedImplCopyWith<_$BrandRegisterStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
