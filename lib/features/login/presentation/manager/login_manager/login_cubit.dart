import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/respond/general_api_respond/api_result.dart';
import 'package:shop_app/core/respond/general_api_respond/network_exceptions.dart';
import 'package:shop_app/core/respond/respond_model/login_model.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';
import 'package:shop_app/features/home/presentation/manager/nav_bar_manager/navigation_bar_cubit.dart';
import 'package:shop_app/features/home/presentation/pages/main_home_page.dart';
import 'package:shop_app/features/login/data/local/data_sources/cache_data.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';
import 'package:shop_app/features/login/domain/use_cases/login_use_case.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit({required this.loginUseCase,})
      : super(const LoginStates.initial());
  LoginUseCase loginUseCase;

  void showPassword() {
    emit(const LoginStates.showPassword());
  }

  void goInitial() {
    emit(const LoginStates.initial());
  }

  void login(
      BuildContext context, String lang, LoginBodyModel loginBodyModel) async {
    emit(const LoginStates.connecting());
    ApiResult<RespondModel> result = await loginUseCase(lang, loginBodyModel);
    result.when(success: (RespondModel respond) {
      if (respond.status!) {
        getIt<CacheData>()
            .setString(key: 'token', value: respond.data?.token ?? '');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<HomeCubit>(
                  create: (_) => getIt<HomeCubit>(),
                ),
                BlocProvider<NavigationBarCubit>(
                  create: (_) => getIt<NavigationBarCubit>(),
                ),
              ],
              child: HomePage(
                token: respond.data?.token ?? '',
              ),
            ),
          ),
        );
      } else {
        emit(LoginStates.loginFail(respond.message!));
      }
    }, failure: (error) {
      emit(LoginStates.loginFail(
          NetworkExceptions.getDioExceptionMessage(error)));
    });
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
