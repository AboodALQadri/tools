import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';

Widget textFieldWidget({
  required TextEditingController controller,
  required Function validator,
  bool obscureText = false,
  required String hintText,
  Widget? suffixIcon,
  int? maxLength,
  required TextInputType textInputType,
}) {
  return TextFormField(
    style: const TextStyle(color: Colors.white),
    controller: controller,
    validator: (value) => validator(value),
    obscureText: obscureText ? true : false,
    cursorColor: Colors.black,
    keyboardType: textInputType,
    maxLength: maxLength,
    decoration: InputDecoration(
      counterText: '',
      filled: true,
      hintText: hintText,
      hintStyle: const TextStyle(
        fontFamily: 'Cairo',
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      suffixIcon: suffixIcon,
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyColors.kPrimaryColor.withOpacity(0.8),
          width: 4,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyColors.kPrimaryColor.withOpacity(0.8),
          width: 4,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyColors.kPrimaryColor.withOpacity(0.8),
          width: 4,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyColors.kPrimaryColor.withOpacity(0.8),
          width: 4,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: MyColors.kPrimaryColor.withOpacity(0.8),
          width: 4,
        ),
      ),
    ),
  );
}
