import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class ConfirmSuccess extends StatelessWidget {
  const ConfirmSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kPrimaryColor,
      appBar: AppBar(
        title: const TextUtils(
          text: 'تأكيد الحساب',
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 22,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ScreenStyle(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: SvgPicture.asset(MyPictures.confirmSuccess),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const TextUtils(
                        text: 'مبروك',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextUtils(
                        text: 'سوف يتم مراجعة طلبك خلال 24 ساعة',
                        color: MyColors.kWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      TextUtils(
                        text: 'قم بالتفقد بعد انتهاء المدة',
                        color: MyColors.kWhiteColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      elevatedWidget(
                        title: 'رجوع إلى الرئيسية',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
