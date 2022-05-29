import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: MyColors.kWhiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextUtils(
                    text: 'الجهاز متاح في جميع الأماكن والجامعات وهو مهم جدا جدا',
                    overFlow: TextOverflow.ellipsis,
                    color: MyColors.kWhiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ],
              ),
            );
          },
        ));
  }
}
