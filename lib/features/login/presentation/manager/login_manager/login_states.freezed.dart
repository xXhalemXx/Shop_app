// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStatesCopyWith<T, $Res> {
  factory $LoginStatesCopyWith(
          LoginStates<T> value, $Res Function(LoginStates<T>) then) =
      _$LoginStatesCopyWithImpl<T, $Res, LoginStates<T>>;
}

/// @nodoc
class _$LoginStatesCopyWithImpl<T, $Res, $Val extends LoginStates<T>>
    implements $LoginStatesCopyWith<T, $Res> {
  _$LoginStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<T, $Res> {
  factory _$$_InitialCopyWith(
          _$_Initial<T> value, $Res Function(_$_Initial<T>) then) =
      __$$_InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$_Initial<T>>
    implements _$$_InitialCopyWith<T, $Res> {
  __$$_InitialCopyWithImpl(
      _$_Initial<T> _value, $Res Function(_$_Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginStates<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginStates<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$$_ConnectingCopyWith<T, $Res> {
  factory _$$_ConnectingCopyWith(
          _$_Connecting<T> value, $Res Function(_$_Connecting<T>) then) =
      __$$_ConnectingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ConnectingCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$_Connecting<T>>
    implements _$$_ConnectingCopyWith<T, $Res> {
  __$$_ConnectingCopyWithImpl(
      _$_Connecting<T> _value, $Res Function(_$_Connecting<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Connecting<T> implements _Connecting<T> {
  const _$_Connecting();

  @override
  String toString() {
    return 'LoginStates<$T>.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connecting<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _Connecting<T> implements LoginStates<T> {
  const factory _Connecting() = _$_Connecting<T>;
}

/// @nodoc
abstract class _$$_ShowOrHidePasswordCopyWith<T, $Res> {
  factory _$$_ShowOrHidePasswordCopyWith(_$_ShowOrHidePassword<T> value,
          $Res Function(_$_ShowOrHidePassword<T>) then) =
      __$$_ShowOrHidePasswordCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isPassword});
}

/// @nodoc
class __$$_ShowOrHidePasswordCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$_ShowOrHidePassword<T>>
    implements _$$_ShowOrHidePasswordCopyWith<T, $Res> {
  __$$_ShowOrHidePasswordCopyWithImpl(_$_ShowOrHidePassword<T> _value,
      $Res Function(_$_ShowOrHidePassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassword = null,
  }) {
    return _then(_$_ShowOrHidePassword<T>(
      null == isPassword
          ? _value.isPassword
          : isPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowOrHidePassword<T> implements _ShowOrHidePassword<T> {
  const _$_ShowOrHidePassword(this.isPassword);

  @override
  final bool isPassword;

  @override
  String toString() {
    return 'LoginStates<$T>.showOrHidePassword(isPassword: $isPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowOrHidePassword<T> &&
            (identical(other.isPassword, isPassword) ||
                other.isPassword == isPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowOrHidePasswordCopyWith<T, _$_ShowOrHidePassword<T>> get copyWith =>
      __$$_ShowOrHidePasswordCopyWithImpl<T, _$_ShowOrHidePassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return showOrHidePassword(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return showOrHidePassword?.call(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (showOrHidePassword != null) {
      return showOrHidePassword(isPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) {
    return showOrHidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) {
    return showOrHidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (showOrHidePassword != null) {
      return showOrHidePassword(this);
    }
    return orElse();
  }
}

abstract class _ShowOrHidePassword<T> implements LoginStates<T> {
  const factory _ShowOrHidePassword(final bool isPassword) =
      _$_ShowOrHidePassword<T>;

  bool get isPassword;
  @JsonKey(ignore: true)
  _$$_ShowOrHidePasswordCopyWith<T, _$_ShowOrHidePassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginFailCopyWith<T, $Res> {
  factory _$$_LoginFailCopyWith(
          _$_LoginFail<T> value, $Res Function(_$_LoginFail<T>) then) =
      __$$_LoginFailCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_LoginFailCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$_LoginFail<T>>
    implements _$$_LoginFailCopyWith<T, $Res> {
  __$$_LoginFailCopyWithImpl(
      _$_LoginFail<T> _value, $Res Function(_$_LoginFail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_LoginFail<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginFail<T> implements _LoginFail<T> {
  const _$_LoginFail(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginStates<$T>.loginFail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFail<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginFailCopyWith<T, _$_LoginFail<T>> get copyWith =>
      __$$_LoginFailCopyWithImpl<T, _$_LoginFail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return loginFail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return loginFail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (loginFail != null) {
      return loginFail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) {
    return loginFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) {
    return loginFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (loginFail != null) {
      return loginFail(this);
    }
    return orElse();
  }
}

abstract class _LoginFail<T> implements LoginStates<T> {
  const factory _LoginFail(final String message) = _$_LoginFail<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$_LoginFailCopyWith<T, _$_LoginFail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnErrorCopyWith<T, $Res> {
  factory _$$_OnErrorCopyWith(
          _$_OnError<T> value, $Res Function(_$_OnError<T>) then) =
      __$$_OnErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_OnErrorCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$_OnError<T>>
    implements _$$_OnErrorCopyWith<T, $Res> {
  __$$_OnErrorCopyWithImpl(
      _$_OnError<T> _value, $Res Function(_$_OnError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_OnError<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnError<T> implements _OnError<T> {
  const _$_OnError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LoginStates<$T>.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnError<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnErrorCopyWith<T, _$_OnError<T>> get copyWith =>
      __$$_OnErrorCopyWithImpl<T, _$_OnError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function(bool isPassword) showOrHidePassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function(bool isPassword)? showOrHidePassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function(bool isPassword)? showOrHidePassword,
    TResult Function(String message)? loginFail,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Connecting<T> value) connecting,
    required TResult Function(_ShowOrHidePassword<T> value) showOrHidePassword,
    required TResult Function(_LoginFail<T> value) loginFail,
    required TResult Function(_OnError<T> value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Connecting<T> value)? connecting,
    TResult? Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult? Function(_LoginFail<T> value)? loginFail,
    TResult? Function(_OnError<T> value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Connecting<T> value)? connecting,
    TResult Function(_ShowOrHidePassword<T> value)? showOrHidePassword,
    TResult Function(_LoginFail<T> value)? loginFail,
    TResult Function(_OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError<T> implements LoginStates<T> {
  const factory _OnError(final String errorMessage) = _$_OnError<T>;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_OnErrorCopyWith<T, _$_OnError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
