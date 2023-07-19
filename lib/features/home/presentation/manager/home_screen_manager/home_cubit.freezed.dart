// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HomeModel homeModel) loaded,
    required TResult Function(HomeModel homeModel) reload,
    required TResult Function(String errorMessage) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HomeModel homeModel)? loaded,
    TResult? Function(HomeModel homeModel)? reload,
    TResult? Function(String errorMessage)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HomeModel homeModel)? loaded,
    TResult Function(HomeModel homeModel)? reload,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reload value) reload,
    required TResult Function(_OnError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_OnError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reload value)? reload,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HomeModel homeModel) loaded,
    required TResult Function(HomeModel homeModel) reload,
    required TResult Function(String errorMessage) onError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HomeModel homeModel)? loaded,
    TResult? Function(HomeModel homeModel)? reload,
    TResult? Function(String errorMessage)? onError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HomeModel homeModel)? loaded,
    TResult Function(HomeModel homeModel)? reload,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reload value) reload,
    required TResult Function(_OnError value) onError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_OnError value)? onError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reload value)? reload,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeModel homeModel});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeModel = null,
  }) {
    return _then(_$_Loaded(
      null == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.homeModel);

  @override
  final HomeModel homeModel;

  @override
  String toString() {
    return 'HomeState.loaded(homeModel: $homeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.homeModel, homeModel) ||
                other.homeModel == homeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HomeModel homeModel) loaded,
    required TResult Function(HomeModel homeModel) reload,
    required TResult Function(String errorMessage) onError,
  }) {
    return loaded(homeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HomeModel homeModel)? loaded,
    TResult? Function(HomeModel homeModel)? reload,
    TResult? Function(String errorMessage)? onError,
  }) {
    return loaded?.call(homeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HomeModel homeModel)? loaded,
    TResult Function(HomeModel homeModel)? reload,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(homeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reload value) reload,
    required TResult Function(_OnError value) onError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_OnError value)? onError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reload value)? reload,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(final HomeModel homeModel) = _$_Loaded;

  HomeModel get homeModel;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReloadCopyWith<$Res> {
  factory _$$_ReloadCopyWith(_$_Reload value, $Res Function(_$_Reload) then) =
      __$$_ReloadCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeModel homeModel});
}

/// @nodoc
class __$$_ReloadCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Reload>
    implements _$$_ReloadCopyWith<$Res> {
  __$$_ReloadCopyWithImpl(_$_Reload _value, $Res Function(_$_Reload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeModel = null,
  }) {
    return _then(_$_Reload(
      null == homeModel
          ? _value.homeModel
          : homeModel // ignore: cast_nullable_to_non_nullable
              as HomeModel,
    ));
  }
}

/// @nodoc

class _$_Reload implements _Reload {
  const _$_Reload(this.homeModel);

  @override
  final HomeModel homeModel;

  @override
  String toString() {
    return 'HomeState.reload(homeModel: $homeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reload &&
            (identical(other.homeModel, homeModel) ||
                other.homeModel == homeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      __$$_ReloadCopyWithImpl<_$_Reload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HomeModel homeModel) loaded,
    required TResult Function(HomeModel homeModel) reload,
    required TResult Function(String errorMessage) onError,
  }) {
    return reload(homeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HomeModel homeModel)? loaded,
    TResult? Function(HomeModel homeModel)? reload,
    TResult? Function(String errorMessage)? onError,
  }) {
    return reload?.call(homeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HomeModel homeModel)? loaded,
    TResult Function(HomeModel homeModel)? reload,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(homeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reload value) reload,
    required TResult Function(_OnError value) onError,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_OnError value)? onError,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reload value)? reload,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload implements HomeState {
  const factory _Reload(final HomeModel homeModel) = _$_Reload;

  HomeModel get homeModel;
  @JsonKey(ignore: true)
  _$$_ReloadCopyWith<_$_Reload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<$Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError value, $Res Function(_$_OnError) then) =
      __$$_OnErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_OnError>
    implements _$$_OnErrorCopyWith<$Res> {
  __$$_OnErrorCopyWithImpl(_$_OnError _value, $Res Function(_$_OnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_OnError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      __$$_OnErrorCopyWithImpl<_$_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(HomeModel homeModel) loaded,
    required TResult Function(HomeModel homeModel) reload,
    required TResult Function(String errorMessage) onError,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(HomeModel homeModel)? loaded,
    TResult? Function(HomeModel homeModel)? reload,
    TResult? Function(String errorMessage)? onError,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(HomeModel homeModel)? loaded,
    TResult Function(HomeModel homeModel)? reload,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reload value) reload,
    required TResult Function(_OnError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_OnError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reload value)? reload,
    TResult Function(_OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements HomeState {
  const factory _OnError(final String errorMessage) = _$_OnError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<_$_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}
