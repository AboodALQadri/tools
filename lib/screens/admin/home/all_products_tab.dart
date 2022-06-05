import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/home/product_list_tile_widget.dart';

class AllProductsTab extends StatefulWidget {
  const AllProductsTab({Key? key}) : super(key: key);

  @override
  State<AllProductsTab> createState() => _AllProductsTabState();
}

class _AllProductsTabState extends State<AllProductsTab> {
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 530,
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
                    // Navigator.pushNamed(context, '/product_details');
                  },
                  child: productListTileWidget(
                    imageUrl:
                        'https://images.unsplash.com/photo-1654044331015-f2bc89997b42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
                    title: 'الجهاز الأول',
                    subtitle: 'عبوود القادري',
                    stateText: 'محجوز',
                    textBackGroundColor: MyColors.kGreenColor,
                    borderColor: MyColors.kGreenColor,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
