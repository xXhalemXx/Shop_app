import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/login_body_model.dart';
import 'package:shop_app/features/login/presentation/manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/manager/login_states.dart';

Widget loginButton(
    GlobalKey<FormState> formKey,
    double screenWidth,
    TextEditingController emailController,
    TextEditingController passwordController) {
  return BlocBuilder<LoginCubit, LoginStates>(builder: (context, states) {
    return states.maybeWhen(connecting: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, loginFail: (message) {
      return errorInLogin(formKey, screenWidth, emailController,
          passwordController, context, message);
    }, onError: (error) {
      return errorInLogin(formKey, screenWidth, emailController,
          passwordController, context, error);
    }, orElse: () {
      return defaultButton(
          width: screenWidth * 0.9,
          text: 'Login',
          onPress: () {
            loginPressed(context, formKey, emailController, passwordController);
          });
    });
  });
}

void loginPressed(
    BuildContext context,
    GlobalKey<FormState> formKey,
    TextEditingController emailController,
    TextEditingController passwordController) {
  if (formKey.currentState!.validate()) {
    LoginBodyModel user = LoginBodyModel(
        email: emailController.text, password: passwordController.text);
    getIt<LoginCubit>().login(context, 'en', user);
  }
}

Widget errorInLogin(
    GlobalKey<FormState> formKey,
    double screenWidth,
    TextEditingController emailController,
    TextEditingController passwordController,
    BuildContext context,
    String message) {
  return Column(
    children: [
      defaultButton(
          width: screenWidth * 0.9,
          text: 'Login',
          onPress: () {
            getIt<LoginCubit>().goInitial();
            loginPressed(context, formKey, emailController, passwordController);
          }),
      addVerticalSpace(5.0),
      Text(
        message,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.red),
        textAlign: TextAlign.center,
      )
    ],
  );
}
