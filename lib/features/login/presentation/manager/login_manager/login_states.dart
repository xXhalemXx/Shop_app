import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates {
  const factory LoginStates.initial() = Initial;
  const factory LoginStates.connecting() = Connecting;
  const factory LoginStates.showPassword()=ShowPassword;
  const factory LoginStates.loginFail(String message)=LoginFail;
  const factory LoginStates.onError(String errorMessage)=OnError;


}
