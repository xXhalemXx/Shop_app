
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_states.dart';

Widget passwordFiled(TextEditingController passwordController) {
  return BlocBuilder<LoginCubit, LoginStates>(builder: (context, states) {
    return states.maybeWhen(showPassword: () {
      return defaultTextFiled(
          textEditingController: passwordController,
          labelText: 'Password',
          validator: (value) {
            return getIt<LoginCubit>().passwordValidator(value);
          },
          isPassword: false,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_off_outlined,
          onPressed: () {
            getIt<LoginCubit>().goInitial();
          });
    }, orElse: () {
      return defaultTextFiled(
          textEditingController: passwordController,
          labelText: 'Password',
          validator: (value) {
            return getIt<LoginCubit>().passwordValidator(value);
          },
          isPassword: true,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_outlined,
          onPressed: () {
            getIt<LoginCubit>().showPassword();
          });
    });
  });
}
