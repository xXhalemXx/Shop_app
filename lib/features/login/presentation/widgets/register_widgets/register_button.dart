import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/data/remote/models/request_model/register_body_model.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(
      {Key? key,
      required this.phoneController,
      required this.formKey,
      required this.passwordController,
      required this.emailController,
      required this.nameController})
      : super(key: key);

  final TextEditingController nameController;

  final TextEditingController passwordController;

  final TextEditingController phoneController;

  final TextEditingController emailController;

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        if (current is RegisterWaitingRespond || current is RegisterSuccess) {
          return true;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        if (state is RegisterInitial) {
          return registerButton(context);
        } else if (state is RegisterWaitingRespond) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is RegisterSuccess) {
          return registerButton(context,
              isInitial: false, respond: state.respond.message!);
        }
        return const SizedBox();
      },
    );
  }

  Widget registerButton(BuildContext context,
      {String respond = '', isInitial = true}) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: defaultButton(
                text: 'Register',
                onPress: () {
                  RegisterBodyModel registerBodyModel = RegisterBodyModel(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      phone: phoneController.text);
                  if (formKey.currentState!.validate()) {
                    getIt<RegisterCubit>()
                        .registerNewUser(context, 'en', registerBodyModel);
                  }
                },
                width: double.infinity)),
        if (!isInitial)
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                respond,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          )),
        Expanded(
          flex: isInitial ? 4 : 3,
          child: const SizedBox(),
        )
      ],
    );
  }
}
