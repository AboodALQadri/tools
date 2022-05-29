import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

class CategoryProductCard extends StatelessWidget {
  const CategoryProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, top: 5),
      width: 328,
      height: 120,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 2,
            blurRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1653787849876-c20bcb0880ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextUtils(
                  text: 'الجهاز الأول',
                  overFlow: TextOverflow.ellipsis,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                TextUtils(
                  text: 'عبود القادري',
                  overFlow: TextOverflow.ellipsis,
                  color: MyColors.kWhiteColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 64,
            height: 32,
            margin: const EdgeInsets.only(left: 25, bottom: 70),
            decoration: BoxDecoration(
              color: MyColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextUtils(
                text: 'مستعارة',
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
