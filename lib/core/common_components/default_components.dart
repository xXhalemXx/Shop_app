import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultTextFiled({
  required TextEditingController textEditingController,
  required String labelText,
  required String? Function(String?) validator,
  required bool isPassword,
  required IconData? prefixIcon,
  IconData? suffixIcon,
  Function? onPressed,
}) {
  return TextFormField(
    keyboardType: TextInputType.name,
    obscureText: isPassword,
    controller: textEditingController,
    decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon),
      labelText: labelText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      suffixIcon: suffixIcon != null
          ? IconButton(
              onPressed: () {
                onPressed!();
              },
              icon: Icon(suffixIcon),
            )
          : null,
    ),
    validator: (value) {
      return validator(value);
    },
  );
}

Widget defaultButton(
    {required String text, required Function onPress, double? width}) {
  return SizedBox(
    width: width ?? 200.0,
    height: 50.0,
    child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        child: Text(text)),
  );
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

defaultErrorToast({required String message}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

defaultSuccessToast({required String message}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0);
}
