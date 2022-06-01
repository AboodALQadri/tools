import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

Widget containerDayWidget({
  required String textDayTime,
  required Color borderColor,
  required Color dayTextColor,
  required Color timeColor,
}) {
  return Container(
    height: 126,
    width: 125,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      border: Border.all(
        color: borderColor,
        width: 2,
      ),
    ),
    child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          child: TextUtils(
            text: textDayTime,
            color: dayTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Divider(
          color: MyColors.kPrimaryColor.withOpacity(0.2),
          thickness: 2,
        ),
        TextUtils(
          text: 'الوقت المتبقي',
          color: timeColor,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
      ],
    ),
  );
}
