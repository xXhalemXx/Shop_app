import 'package:flutter/material.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/login_manager/login_cubit.dart';
import 'package:shop_app/features/login/presentation/widgets/login_widgets/password_filed.dart';
import 'package:shop_app/features/login/presentation/widgets/login_widgets/login_button.dart';
import 'package:shop_app/features/login/presentation/widgets/login_widgets/text_widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

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
                  addVerticalSpace(screenHeight * 0.25),
                  startText(context),
                  addVerticalSpace(screenHeight * 0.05),
                  defaultTextFiled(
                    textEditingController: emailController,
                    labelText: 'Email',
                    validator: (value) {
                      return getIt<LoginCubit>().emailValidator(value);
                    },
                    isPassword: false,
                    prefixIcon: Icons.email_outlined,
                  ),
                  addVerticalSpace(screenHeight * 0.02),
                  passwordFiled(passwordController),
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
