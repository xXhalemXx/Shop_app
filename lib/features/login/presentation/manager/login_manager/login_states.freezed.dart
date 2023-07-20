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
    required TResult Function() showPassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? showPassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? showPassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
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
abstract class _$$InitialCopyWith<T, $Res> {
  factory _$$InitialCopyWith(
          _$Initial<T> value, $Res Function(_$Initial<T>) then) =
      __$$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$Initial<T>>
    implements _$$InitialCopyWith<T, $Res> {
  __$$InitialCopyWithImpl(
      _$Initial<T> _value, $Res Function(_$Initial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'LoginStates<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() showPassword,
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
    TResult? Function()? showPassword,
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
    TResult Function()? showPassword,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements LoginStates<T> {
  const factory Initial() = _$Initial<T>;
}

/// @nodoc
abstract class _$$ConnectingCopyWith<T, $Res> {
  factory _$$ConnectingCopyWith(
          _$Connecting<T> value, $Res Function(_$Connecting<T>) then) =
      __$$ConnectingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ConnectingCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$Connecting<T>>
    implements _$$ConnectingCopyWith<T, $Res> {
  __$$ConnectingCopyWithImpl(
      _$Connecting<T> _value, $Res Function(_$Connecting<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Connecting<T> implements Connecting<T> {
  const _$Connecting();

  @override
  String toString() {
    return 'LoginStates<$T>.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Connecting<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() showPassword,
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
    TResult? Function()? showPassword,
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
    TResult Function()? showPassword,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class Connecting<T> implements LoginStates<T> {
  const factory Connecting() = _$Connecting<T>;
}

/// @nodoc
abstract class _$$ShowPasswordCopyWith<T, $Res> {
  factory _$$ShowPasswordCopyWith(
          _$ShowPassword<T> value, $Res Function(_$ShowPassword<T>) then) =
      __$$ShowPasswordCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ShowPasswordCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$ShowPassword<T>>
    implements _$$ShowPasswordCopyWith<T, $Res> {
  __$$ShowPasswordCopyWithImpl(
      _$ShowPassword<T> _value, $Res Function(_$ShowPassword<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassword<T> implements ShowPassword<T> {
  const _$ShowPassword();

  @override
  String toString() {
    return 'LoginStates<$T>.showPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() showPassword,
    required TResult Function(String message) loginFail,
    required TResult Function(String errorMessage) onError,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? showPassword,
    TResult? Function(String message)? loginFail,
    TResult? Function(String errorMessage)? onError,
  }) {
    return showPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? showPassword,
    TResult Function(String message)? loginFail,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword<T> implements LoginStates<T> {
  const factory ShowPassword() = _$ShowPassword<T>;
}

/// @nodoc
abstract class _$$LoginFailCopyWith<T, $Res> {
  factory _$$LoginFailCopyWith(
          _$LoginFail<T> value, $Res Function(_$LoginFail<T>) then) =
      __$$LoginFailCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginFailCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$LoginFail<T>>
    implements _$$LoginFailCopyWith<T, $Res> {
  __$$LoginFailCopyWithImpl(
      _$LoginFail<T> _value, $Res Function(_$LoginFail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginFail<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFail<T> implements LoginFail<T> {
  const _$LoginFail(this.message);

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
            other is _$LoginFail<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailCopyWith<T, _$LoginFail<T>> get copyWith =>
      __$$LoginFailCopyWithImpl<T, _$LoginFail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() showPassword,
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
    TResult? Function()? showPassword,
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
    TResult Function()? showPassword,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) {
    return loginFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) {
    return loginFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (loginFail != null) {
      return loginFail(this);
    }
    return orElse();
  }
}

abstract class LoginFail<T> implements LoginStates<T> {
  const factory LoginFail(final String message) = _$LoginFail<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginFailCopyWith<T, _$LoginFail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnErrorCopyWith<T, $Res> {
  factory _$$OnErrorCopyWith(
          _$OnError<T> value, $Res Function(_$OnError<T>) then) =
      __$$OnErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$OnErrorCopyWithImpl<T, $Res>
    extends _$LoginStatesCopyWithImpl<T, $Res, _$OnError<T>>
    implements _$$OnErrorCopyWith<T, $Res> {
  __$$OnErrorCopyWithImpl(
      _$OnError<T> _value, $Res Function(_$OnError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$OnError<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnError<T> implements OnError<T> {
  const _$OnError(this.errorMessage);

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
            other is _$OnError<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnErrorCopyWith<T, _$OnError<T>> get copyWith =>
      __$$OnErrorCopyWithImpl<T, _$OnError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() showPassword,
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
    TResult? Function()? showPassword,
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
    TResult Function()? showPassword,
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
    required TResult Function(Initial<T> value) initial,
    required TResult Function(Connecting<T> value) connecting,
    required TResult Function(ShowPassword<T> value) showPassword,
    required TResult Function(LoginFail<T> value) loginFail,
    required TResult Function(OnError<T> value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(Connecting<T> value)? connecting,
    TResult? Function(ShowPassword<T> value)? showPassword,
    TResult? Function(LoginFail<T> value)? loginFail,
    TResult? Function(OnError<T> value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(Connecting<T> value)? connecting,
    TResult Function(ShowPassword<T> value)? showPassword,
    TResult Function(LoginFail<T> value)? loginFail,
    TResult Function(OnError<T> value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError<T> implements LoginStates<T> {
  const factory OnError(final String errorMessage) = _$OnError<T>;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$OnErrorCopyWith<T, _$OnError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
