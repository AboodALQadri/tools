import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/widgets/auth/elevated_widget.dart';
import 'package:tools/widgets/auth/text_field_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kPrimaryColor,
      appBar: AppBar(
        title: const TextUtils(
          text: 'إنشاء حساب',
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 22,
          underLine: TextDecoration.none,
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
              // const PageColor(),
              Container(
                margin: const EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: SvgPicture.asset(MyPictures.registerLogo),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 370,
                decoration: BoxDecoration(
                  color: const Color(0xff0A0A0A).withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextUtils(
                          text: 'البريد الألكتروني',
                          color: MyColors.kPrimaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFieldWidget(
                        controller: _emailTextController,
                        hintText: 'البريد الألكتروني',
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextUtils(
                          text: 'رقم الهاتف',
                          color: MyColors.kPrimaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFieldWidget(
                        controller: _phoneTextController,
                        hintText: 'رقم الهاتف',
                        textInputType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextUtils(
                          text: 'إسم المستخدم',
                          color: MyColors.kPrimaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFieldWidget(
                        controller: _nameTextController,
                        hintText: 'إسم المستخدم',
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedWidget(
                        title: 'تسجيل الدخول',
                        color: MyColors.kPrimaryColor,
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/password_register_screen');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
