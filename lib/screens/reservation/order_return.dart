import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/image_details.dart';
import 'package:tools/widgets/reservation/container_return_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class OrderReturn extends StatelessWidget {
  const OrderReturn({Key? key}) : super(key: key);

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
            imageDetails(
              imageUrl:
                  'https://images.unsplash.com/photo-1653940355946-5e92f3c53e1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              width: double.infinity,
              height: 360,
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
                padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 25),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const TextUtils(
                            text: 'تم إنهاء الحجز',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 29,
                          ),
                          TextUtils(
                            text: 'شكرا على الإرجاع',
                            color: MyColors.kWhiteColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          containerReturnWidget(
                            textReturnTime: 'الوقت المنقضي',
                            textDay: '5 أيام',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          containerReturnWidget(
                            textReturnTime: 'الوقت المتبقي',
                            textDay: '3 أيام',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      elevatedWidget(
                        title: 'أرجع إلى الحجوزات',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/main_screen', (route) => false);
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
