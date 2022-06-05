import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/adminWidgets/reservation/reservation_container_widget.dart';
import 'package:tools/widgets/adminWidgets/reservation/reservation_elevated_widget.dart';
import 'package:tools/widgets/container_widget.dart';
import 'package:tools/widgets/image_details.dart';
import 'package:tools/widgets/text_utils.dart';

class ReservationProductDetails extends StatelessWidget {
  const ReservationProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyColors.kGreenColor,
        centerTitle: true,
        title: const TextUtils(
            text: 'طلب حجز',
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 90,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextUtils(
                        text: 'طلب حجز جهاز رقم 1',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      TextUtils(
                        text: 'عبدالله القادري',
                        color: MyColors.kWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ],
                  ),
                  containerWidget(
                    text: 'حجز',
                    colorText: Colors.white,
                    backgroundColor: MyColors.kGreenColor,
                    borderColor: MyColors.kGreenColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
              child: Column(
                children: [
                  reservationContainerWidget(
                    text: 'اسم الحاجز',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reservationContainerWidget(
                    text: 'بداية الحجز',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reservationContainerWidget(
                    text: 'نهاية الحجز',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      reservationElevatedWidget(
                        title: 'قبول',
                        color: MyColors.kGreenColor,
                        borderSideColor: MyColors.kGreenColor,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      reservationElevatedWidget(
                        title: 'رفض',
                        color: MyColors.kRedColor,
                        borderSideColor: MyColors.kRedColor,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
