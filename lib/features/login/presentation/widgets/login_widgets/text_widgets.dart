import 'package:flutter/material.dart';

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

Widget endText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Don\'t have an account'),
      TextButton(onPressed: () {}, child: const Text('Register now?')),
    ],
  );
}
