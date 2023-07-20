import 'package:flutter/material.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';
import 'package:shop_app/features/login/presentation/widgets/register_widgets/register_initial_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
       return getIt<RegisterCubit>().exitRegisterScreen();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: RegisterInitialScreen(),
      ),
    );
  }
}
