import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/home/category_product_card.dart';
import 'package:tools/widgets/home/category_widget.dart';

class AllDevicesTab extends StatefulWidget {
  const AllDevicesTab({Key? key}) : super(key: key);

  @override
  State<AllDevicesTab> createState() => _AllDevicesTabState();
}

class _AllDevicesTabState extends State<AllDevicesTab> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15 , right: 15 ),
            child: const SizedBox(
              width: 70,
              height: 40,
              child: CategoryWidget(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 600,
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return const CategoryProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}
