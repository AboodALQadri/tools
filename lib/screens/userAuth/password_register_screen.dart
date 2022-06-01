import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/text_field_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class PasswordRegisterScreen extends StatefulWidget {
  const PasswordRegisterScreen({Key? key}) : super(key: key);

  @override
  State<PasswordRegisterScreen> createState() => _PasswordRegisterScreenState();
}

class _PasswordRegisterScreenState extends State<PasswordRegisterScreen> {
  final TextEditingController _passwordTextController = TextEditingController();

  final TextEditingController _confirmPasswordTextController =
      TextEditingController();

  bool _isVisibility = true;
  bool _confirmIsVisibility = true;

  final formKey = GlobalKey<FormState>();

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
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: SvgPicture.asset(MyPictures.passwordLogo),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                width: double.infinity,
                height: 300,
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
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            height: 5,
                          ),
                          textFieldWidget(
                            controller: _passwordTextController,
                            validator: (value) {
                              if (value.toString().length < 5) {
                                return 'يجب أن تكون كلمة المرور أطول من 5 أحرف';
                              } else {
                                return null;
                              }
                            },
                            hintText: 'كلمة المرور',
                            textInputType: TextInputType.text,
                            obscureText: _isVisibility,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isVisibility = !_isVisibility;
                                });
                              },
                              icon: _isVisibility
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextUtils(
                              text: 'تأكيد كلمة المرور',
                              color: MyColors.kPrimaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          textFieldWidget(
                            controller: _confirmPasswordTextController,
                            validator: (value) {
                              if (_confirmPasswordTextController.text !=
                                  _passwordTextController.text) {
                                return 'كلمة المرور التأكيدية غير صحيحة';
                              } else {
                                return null;
                              }
                            },
                            hintText: 'تأكيد كلمة المرور',
                            textInputType: TextInputType.text,
                            obscureText: _confirmIsVisibility,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _confirmIsVisibility = !_confirmIsVisibility;
                                });
                              },
                              icon: _confirmIsVisibility
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.white,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          elevatedWidget(
                            title: 'تسجيل الدخول',
                            color: MyColors.kPrimaryColor,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                String password = _passwordTextController.text;
                                String confirmPassword =
                                    _confirmPasswordTextController.text;
                                Navigator.pushNamed(
                                    context, '/confirm_account');
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
