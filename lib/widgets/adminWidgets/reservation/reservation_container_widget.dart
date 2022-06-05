import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

Widget reservationContainerWidget({required String text}) {
  return Container(
    alignment: Alignment.centerRight,
    padding: const EdgeInsets.only(right: 15),
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: MyColors.kWhiteColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(5),
    ),
    child:  TextUtils(
      text: text,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );
}
