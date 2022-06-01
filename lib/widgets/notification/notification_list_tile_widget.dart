import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

Widget notificationListTileWidget({
  required imageUrl,
  required String title,
  required String subTitle,
  required String textHours,
}) {
  return Container(
    alignment: Alignment.center,
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
    ),
    child: ListTile(
      leading: Container(
        width: 43.5,
        height: 40,
        decoration: BoxDecoration(
          color: MyColors.kPrimaryColor.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: CircleAvatar(
          child: Image.network(
            imageUrl,
            width: 19.58,
            height: 20,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: TextUtils(
        text: title,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      subtitle: TextUtils(
        text: subTitle,
        color: MyColors.kWhiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      trailing: Container(
        margin: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        width: 87.01,
        height: 32,
        decoration: BoxDecoration(
          color: MyColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextUtils(
          text: textHours,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
  );
}
