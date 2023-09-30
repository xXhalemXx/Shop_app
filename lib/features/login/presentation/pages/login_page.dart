import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_states.dart';
import 'package:shop_app/features/login/presentation/widgets/login_widgets/login_button.dart';
import 'package:shop_app/features/login/presentation/widgets/login_widgets/text_widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  addVerticalSpace(screenHeight * 0.1),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: getIt<LoginCubit>().riveArtBoard == null
                        ? const SizedBox.shrink()
                        : Rive(
                            artboard: getIt<LoginCubit>().riveArtBoard!,
                          ),
                  ),
                  // email filed
                  DefaultTextFiled(
                    textEditingController: emailController,
                    labelText: 'Email',
                    validator: (value) {
                      return getIt<LoginCubit>().emailValidator(value);
                    },
                    onChanged: (value) {
                      getIt<LoginCubit>().lookAtText(value);
                    },
                    isPassword: false,
                    prefixIcon: Icons.email_outlined,
                  ),
                  addVerticalSpace(screenHeight * 0.02),
                  // password filed
                  BlocBuilder<LoginCubit, LoginStates>(buildWhen: (_, current) {
                    if (current == const LoginStates.showOrHidePassword(true) ||
                        current ==
                            const LoginStates.showOrHidePassword(false)) {
                      return true;
                    }
                    return false;
                  }, builder: (context, states) {
                    return DefaultTextFiled(
                      focusNode: getIt<LoginCubit>().passwordFocusNode,
                      textEditingController: passwordController,
                      labelText: 'Password',
                      validator: (value) {
                        return getIt<LoginCubit>().passwordValidator(value);
                      },
                      isPassword: getIt<LoginCubit>().isPassword,
                      prefixIcon: Icons.lock_outline,
                      suffixIcon: getIt<LoginCubit>().isPassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      onPressed: () {
                        getIt<LoginCubit>().showORHidePassword(context);
                        FocusScope.of(context).requestFocus(getIt<LoginCubit>().passwordFocusNode);

                      },
                      onChanged: (value) {
                        if (!getIt<LoginCubit>().isPassword) {
                          getIt<LoginCubit>().lookAtText(value);
                        }
                      },
                    );
                  }),
                  addVerticalSpace(screenHeight * 0.02),
                  loginButton(formKey, screenWidth, emailController,
                      passwordController),
                  addVerticalSpace(screenHeight * 0.02),
                  endText(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
