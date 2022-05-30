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
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 15, top: 15),
              child: CategoryWidget(),
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
      ),
    );
  }
}
