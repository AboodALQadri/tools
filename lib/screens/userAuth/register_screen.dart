import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/constants/my_string.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/text_field_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

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
                            height: 5,
                          ),
                          textFieldWidget(
                            controller: _emailTextController,
                            validator: (value) {
                              if (!RegExp(validationEmail).hasMatch(value)) {
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
                              text: 'رقم الهاتف',
                              color: MyColors.kPrimaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          textFieldWidget(
                            controller: _phoneTextController,
                            maxLength: 10,
                            validator: (value) {
                              if (value.toString().length < 10 &&
                                  !RegExp(validationPhone).hasMatch(value)) {
                                return 'رقم الهاتف خاطئ';
                              } else {
                                return null;
                              }
                            },
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
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          textFieldWidget(
                            controller: _nameTextController,
                            validator: (value) {
                              if (value.toString().length < 2 ||
                                  !RegExp(validationName).hasMatch(value)) {
                                return 'ادخل اسم غير مستخدم';
                              } else {
                                return null;
                              }
                            },
                            hintText: 'إسم المستخدم',
                            textInputType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          elevatedWidget(
                            title: 'تسجيل الدخول',
                            color: MyColors.kPrimaryColor,
                            onPressed: () {
                              if (fromKey.currentState!.validate()) {
                                String email = _emailTextController.text.trim();
                                String phone =
                                    _phoneTextController.text.toString();
                                String name = _nameTextController.text.trim();
                                Navigator.pushNamed(
                                    context, '/password_register_screen');
                              }
                            },
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
