import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/home/product_list_tile_widget.dart';

class ProductsReservedTab extends StatefulWidget {
  const ProductsReservedTab({Key? key}) : super(key: key);

  @override
  State<ProductsReservedTab> createState() => _ProductsReservedTabState();
}

class _ProductsReservedTabState extends State<ProductsReservedTab> {
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
                        'https://images.unsplash.com/photo-1654349409781-75907b14026a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
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
