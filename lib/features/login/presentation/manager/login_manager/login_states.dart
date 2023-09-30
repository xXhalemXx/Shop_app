import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates {
  const factory LoginStates.initial() = _Initial;
  const factory LoginStates.connecting() = _Connecting;
  const factory LoginStates.showOrHidePassword(bool isPassword)=_ShowOrHidePassword;
  const factory LoginStates.loginFail(String message)=_LoginFail;
  const factory LoginStates.onError(String errorMessage)=_OnError;


}
