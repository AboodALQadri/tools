import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/container_widget.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/image_details.dart';
import 'package:tools/widgets/home/product_info.dart';
import 'package:tools/widgets/text_utils.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TextUtils(
            text: 'الجهاز الأول',
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 22),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            imageDetails(
              imageUrl:
                  'https://images.unsplash.com/photo-1653233797549-529adf530b6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              width: double.infinity,
              height: 340,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 0.1,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TextUtils(
                            text: 'الجهاز الأول',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          Row(
                            children: [
                              containerWidget(
                                  text: 'محجوزة',
                                  backgroundColor: MyColors.kGreenColor,
                                  colorText: Colors.white,
                                  borderColor: MyColors.kGreenColor),
                              const SizedBox(
                                width: 15,
                              ),
                              containerWidget(
                                text: 'لابتوبات',
                                backgroundColor: MyColors.kPrimaryColor,
                                colorText: Colors.white,
                                borderColor: MyColors.kPrimaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          TextUtils(
                            text: 'التفاصيل',
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      productInfo(
                          textInfo:
                              'الجهاز متاح في جميع الأماكن والجامعات وهو مهم جدا جدا'),
                      const SizedBox(height: 5),
                      productInfo(
                          textInfo:
                              'الجهاز متاح في جميع الأماكن والجامعات وهو مهم جدا جدا'),
                      const SizedBox(height: 5),
                      productInfo(
                          textInfo:
                              'الجهاز متاح في جميع الأماكن والجامعات وهو مهم جدا جدا'),
                      const SizedBox(height: 5),
                      productInfo(
                          textInfo:
                              'الجهاز متاح في جميع الأماكن والجامعات وهو مهم جدا جدا'),
                      const SizedBox(
                        height: 15,
                      ),
                      elevatedWidget(
                        title: 'إحجز الأن',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {
                          Navigator.pushNamed(context, '/date_screen');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
