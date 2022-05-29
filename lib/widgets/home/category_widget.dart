import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
              color: isSelected ? MyColors.kPrimaryColor : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: MyColors.kPrimaryColor,
                width: 2,
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: TextUtils(
                text: 'لابتوبات',
                color: isSelected ? Colors.white : MyColors.kPrimaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                underLine: TextDecoration.none,
              ),
            ),
          );
        },
      ),
    );
  }
}
