import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/constants/my_string.dart';
import 'package:tools/widgets/auth/elevated_widget.dart';
import 'package:tools/widgets/auth/text_field_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kPrimaryColor,
      appBar: AppBar(
        title: const TextUtils(
          text: 'تسجيل الدخول',
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
              Container(
                margin: const EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: SvgPicture.asset(MyPictures.logoName),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  color: const Color(0xff0A0A0A).withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Form(
                    key: fromKey,
                    child: SingleChildScrollView(
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

                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFieldWidget(
                            controller: _emailTextController,
                            validator: (value) {
                              if (!RegExp(validationEmail)
                                  .hasMatch(value)) {
                                return 'بريد إلكتروني خاطئ';
                              } else {
                                return null;
                              }
                            },
                            hintText: 'البريد الألكتروني',
                            textInputType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextUtils(
                              text: 'كلمة المرور',
                              color: MyColors.kPrimaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,

                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFieldWidget(
                            controller: _passwordTextController,
                            validator: (value) {
                              if (value.toString().length < 5) {
                                return 'يجب أن تكون كلمة المرور أطول من 5 أحرف';
                              } else {
                                return null;
                              }
                            },
                            obscureText: true,
                            hintText: 'كلمة المرور',
                            suffixIcon: const Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ),
                            textInputType: TextInputType.text,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedWidget(
                            title: 'تسجيل الدخول',
                            color: MyColors.kPrimaryColor,
                            onPressed: () {
                              if (fromKey.currentState!.validate()) {
                                String email =
                                    _emailTextController.text.trim();
                                String password =
                                    _passwordTextController.text;
                                // Navigator.pushReplacementNamed(
                                //     context, '/welcome_screen');
                              }
                            },
                          ),
                          ElevatedWidget(
                            borderSideColor: Colors.red,
                            title: 'إستخدم الجيميل',
                            color: MyColors.kRedColor,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
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
