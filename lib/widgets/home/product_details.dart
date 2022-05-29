import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/auth/elevated_widget.dart';
import 'package:tools/widgets/home/image_details.dart';
import 'package:tools/widgets/home/product_info.dart';
import 'package:tools/widgets/text_utils.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const ImageDetails(),
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.1,
                    spreadRadius:0.1,
                    blurStyle: BlurStyle.inner
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
                              Container(
                                alignment: Alignment.center,
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColors.kGreenColor,
                                ),
                                child: const TextUtils(
                                  text: 'محجوزة',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: MyColors.kPrimaryColor,
                                ),
                                child: const TextUtils(
                                  text: 'لابتوبات',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          TextUtils(
                            text: 'التفاصيل',
                            color: MyColors.kWhiteColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ProductInfo(),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedWidget(
                        title: 'إحجز الأن',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {},
                      )
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
