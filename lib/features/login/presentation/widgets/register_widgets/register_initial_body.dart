import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/common_components/default_components.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';
import 'package:shop_app/features/login/presentation/widgets/register_widgets/register_button.dart';

class RegisterInitialScreen extends StatelessWidget {
  RegisterInitialScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'Register now to see least offers',
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.grey[600]),
              ),
            ),
            Expanded(
              flex: 2,
              child: defaultTextFiled(
                  textEditingController: nameController,
                  labelText: 'Name',
                  validator: (value) {
                    return getIt<RegisterCubit>().nameAndPhoneValidator(value);
                  },
                  isPassword: false,
                  prefixIcon: Icons.person),
            ),
            Expanded(
              flex: 2,
              child: defaultTextFiled(
                  textEditingController: emailController,
                  labelText: 'Email',
                  validator: (value) {
                    return getIt<RegisterCubit>().emailValidator(value);
                  },
                  isPassword: false,
                  prefixIcon: Icons.email),
            ),
            Expanded(
              flex: 2,
              child: defaultTextFiled(
                  textEditingController: phoneController,
                  labelText: 'Phone Number',
                  validator: (value) {
                    return getIt<RegisterCubit>().nameAndPhoneValidator(value);
                  },
                  isPassword: false,
                  prefixIcon: Icons.phone),
            ),
            Expanded(
              flex: 2,
              child: BlocBuilder<RegisterCubit,RegisterState>(
                buildWhen: (prev,current){
                  if(current is RegisterShowOrHidPassword){
                    return true;
                  }
                  return false;
                },
                builder: (context, state) {
                  return defaultTextFiled(
                      textEditingController: passwordController,
                      labelText: 'Password',
                      validator: (value) {
                        return getIt<RegisterCubit>().passwordValidator(value);
                      },
                      isPassword: getIt<RegisterCubit>().isPassword,
                      suffixIcon: getIt<RegisterCubit>().isPassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      prefixIcon: Icons.lock,
                      onPressed: () {
                       getIt<RegisterCubit>().showOrHidePassword();
                      });
                },
              ),
            ),
            Expanded(
              flex: 5,
              child: RegisterButton(
                phoneController: phoneController,
                nameController: nameController,
                emailController: emailController,
                formKey: formKey,
                passwordController: passwordController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
