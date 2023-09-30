import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget defaultTextFiled({
  required TextEditingController textEditingController,
  required String labelText,
  required String? Function(String?) validator,
  required bool isPassword,
  required IconData? prefixIcon,
  Function(String)? onChanged,
  FocusNode? passwordFocusNode,
  IconData? suffixIcon,
  Function? onPressed,
  Function? onTap,
  Function? onTapOutSide,
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
    onChanged: (value) {
      onChanged == null ? debugPrint("noting to do :)") : onChanged(value);
    },
    onTap: () {
      if (onTap == null) {
        debugPrint('nothing to do :)');
      } else {
        onTap();
      }
    },
    onTapOutside: (v) {
      if (onTapOutSide == null) {
        debugPrint('nothing to do :)');
      } else {
        onTapOutSide();
      }
    },
    focusNode: isPassword ? passwordFocusNode : null,
  );
}

class DefaultTextFiled extends StatelessWidget {
  DefaultTextFiled({
    super.key,
    required this.textEditingController,
    this.focusNode,
    required this.isPassword,
    required this.prefixIcon,
    this.suffixIcon,
    required this.labelText,
    this.onChanged,
    this.onPressed,
    required this.validator,
  });

  TextEditingController textEditingController;
  String labelText;
  String? Function(String?) validator;
  bool isPassword;
  IconData prefixIcon;
  Function(String)? onChanged;
  IconData? suffixIcon;
  FocusNode? focusNode;
  Function? onPressed;

  @override
  Widget build(BuildContext context) {
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
      onChanged: (value) {
        onChanged == null ? debugPrint("noting to do :)") : onChanged!(value);
      },
      focusNode: isPassword ? focusNode : null,
    );
  }
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
