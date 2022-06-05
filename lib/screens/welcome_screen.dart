import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/widgets/elevated_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kPrimaryColor,
      body: ScreenStyle(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(MyPictures.logoName),
                ),
                const SizedBox(
                  height: 200,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      elevatedWidget(
                        title: 'تسجيل كمستخدم',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {
                          Navigator.pushNamed(context, '/user_login_screen');
                        },
                      ),
                      elevatedWidget(
                        title: 'تسجيل كمشرف',
                        color: MyColors.kPurpleColor,
                        borderSideColor: MyColors.kPurpleColor,
                        onPressed: () {
                          Navigator.pushNamed(context, '/admin_splash_screen');
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
