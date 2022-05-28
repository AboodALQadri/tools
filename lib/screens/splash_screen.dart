import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/welcome_screen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.kPrimaryColor,
        body: ScreenStyle(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Center(
                  child: SvgPicture.asset(MyPictures.logoName),
                ),
              ],
            ),
          ),
        ));
  }
}
