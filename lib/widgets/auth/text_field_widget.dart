import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    required this.controller,
    required this.validator,
    this.obscureText = false,
    required this.hintText,
    this.suffixIcon,
    this.maxLength,
    required this.textInputType,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final Function validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
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
            color: const Color(0xff1597E5).withOpacity(0.8),
            width: 4,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xff1597E5).withOpacity(0.8),
            width: 4,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xff1597E5).withOpacity(0.8),
            width: 4,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xff1597E5).withOpacity(0.8),
            width: 4,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xff1597E5).withOpacity(0.8),
            width: 4,
          ),
        ),
      ),
    );
  }
}
