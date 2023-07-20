import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/features/login/presentation/manager/register_manager/register_cubit.dart';
import 'package:shop_app/features/login/presentation/pages/register_screen.dart';

Widget startText(BuildContext context) {
  return Column(
    children: [
      putWidgetAtStart(Text(
        'Login',
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      putWidgetAtStart(
        Text(
          'Login to see our last offers ',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.grey),
        ),
      ),
    ],
  );
}

Widget putWidgetAtStart(Widget widget) {
  return Row(
    children: [widget, const Spacer()],
  );
}

Widget endText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Don\'t have an account'),
      TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (_) => getIt<RegisterCubit>(),
                  child: const RegisterScreen(),
                ),
              ),
            );
          },
          child: const Text('Register now?')),
    ],
  );
}
