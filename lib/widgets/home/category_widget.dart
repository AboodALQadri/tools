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
  int _currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 70,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentSelected = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 65,
              decoration: BoxDecoration(
                color: _currentSelected == index ? MyColors.kPrimaryColor : Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: MyColors.kPrimaryColor,
                  width: 2,
                ),
              ),
              child: TextUtils(
                text: 'لابتوبات',
                color: _currentSelected == index ? Colors.white : MyColors.kPrimaryColor,
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
