import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

Widget personElevatedWidget({
  required String text,
  required Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      primary: MyColors.kRedColor.withOpacity(0.8),
      minimumSize: const Size(300, 50),
    ),
    onPressed: onPressed,
    child: TextUtils(
      text: text,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
  );
}
