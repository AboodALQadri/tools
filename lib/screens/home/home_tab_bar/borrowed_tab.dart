import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/container_widget.dart';
import 'package:tools/widgets/home/product_list_tile_widget.dart';

class BorrowedTab extends StatefulWidget {
  const BorrowedTab({Key? key}) : super(key: key);

  @override
  State<BorrowedTab> createState() => _BorrowedTabState();
}

class _BorrowedTabState extends State<BorrowedTab> {
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
            width: 70,
            child: ListView.separated(
              itemCount: 5,
              padding: const EdgeInsets.only(right: 15, top: 15),
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
                      currentSelected = index;
                    });
                  },
                  child: containerWidget(
                    borderColor: MyColors.kPrimaryColor,
                    text: 'لابتوبات',
                    backgroundColor: currentSelected == index
                        ? MyColors.kPrimaryColor
                        : Colors.white,
                    colorText: currentSelected == index
                        ? Colors.white
                        : MyColors.kPrimaryColor,
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 450,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/product_details');
                  },
                  child: productListTileWidget(
                      imageUrl:
                          'https://images.unsplash.com/photo-1653942794582-a13da9e70b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                      title: 'الجهاز الأول',
                      subtitle: 'عبوود القادري',
                      stateText: 'مستعارة',
                      textBackGroundColor: MyColors.kPrimaryColor,
                      borderColor: MyColors.kPrimaryColor),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
