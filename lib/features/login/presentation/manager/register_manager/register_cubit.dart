import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/respond/general_api_respond/network_exceptions.dart';
import 'package:shop_app/features/login/data/remote/models/register_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';
import 'package:shop_app/features/login/domain/use_cases/register_use_case.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.register}) : super(RegisterInitial());
  Register register;
  bool isPassword=true;

  registerNewUser(BuildContext context,String lang, RegisterBodyModel registerBodyModel) {
    emit(RegisterWaitingRespond());
    register(lang: lang, registerBodyModel: registerBodyModel).then((value) {
      value.when(success: (respond) {
        if(respond.status!){
          defaultSuccessToast(message: 'Registered');
          getIt.resetLazySingleton<RegisterCubit>();
          Navigator.pop(context);
        }else{
          emit(RegisterSuccess(respond: respond));
        }
      }, failure: (error) {
        defaultErrorToast(
            message: NetworkExceptions.getDioExceptionMessage(error));
      });
    });
  }

  showOrHidePassword(){
    isPassword=!isPassword;
    emit(RegisterShowOrHidPassword(isPassword: isPassword));
  }

 bool exitRegisterScreen(){
    getIt.resetLazySingleton<RegisterCubit>();
    return true;
  }

  String? nameAndPhoneValidator(String? value) {
    if (value == null || value.isEmpty || value == '') {
      return 'You need to fill this field';
    }
    return null;
  }

  String? emailValidator(String? value) {
    final validCharacters = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value == null || value.isEmpty || value == '') {
      return 'You need to fill this field';
    } else if (!validCharacters.hasMatch(value)) {
      return 'Enter valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty || value == '') {
      return 'You need to fill this field';
    } else if (value.length < 6) {
      return 'Too short password';
    }
    return null;
  }


}
