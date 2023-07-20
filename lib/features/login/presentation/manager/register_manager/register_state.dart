part of 'register_cubit.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterWaitingRespond extends RegisterState {}
class RegisterShowOrHidPassword extends RegisterState {
  bool isPassword;
  RegisterShowOrHidPassword({required this.isPassword});
}

class RegisterSuccess extends RegisterState {
  RegisterModel respond;

  RegisterSuccess({required this.respond});
}

class RegisterError extends RegisterState {
  String errorMessage;

  RegisterError({required this.errorMessage});
}
