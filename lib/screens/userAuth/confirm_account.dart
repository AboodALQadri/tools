import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/constants/my_pictures.dart';
import 'package:tools/widgets/elevated_widget.dart';
import 'package:tools/widgets/text_utils.dart';

class ConfirmAccount extends StatefulWidget {
  const ConfirmAccount({Key? key}) : super(key: key);

  @override
  State<ConfirmAccount> createState() => _ConfirmAccountState();
}

class _ConfirmAccountState extends State<ConfirmAccount> {
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
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                alignment: Alignment.center,
                child: SvgPicture.asset(MyPictures.confirmLogo),
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
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
                        vertical: 25,
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const TextUtils(
                                    text: 'تأكيد الحساب',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  TextUtils(
                                    text: 'لقد تم إرسال رمز تأكيد إلى الايميل',
                                    color: MyColors.kWhiteColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                  TextUtils(
                                    text: 'الخاص بك',
                                    color: MyColors.kWhiteColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  PinCodeTextField(
                                    appContext: context,
                                    length: 6,
                                    cursorColor: Colors.black,
                                    animationType: AnimationType.fade,
                                    pinTheme: PinTheme(
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(10),
                                      fieldHeight: 45,
                                      fieldWidth: 60,
                                      activeFillColor: MyColors.kWhiteColor,
                                      activeColor: MyColors.kWhiteColor,
                                      selectedColor: MyColors.kWhiteColor,
                                      selectedFillColor: MyColors.kWhiteColor,
                                      inactiveFillColor: MyColors.kWhiteColor,
                                      disabledColor: MyColors.kWhiteColor,
                                      errorBorderColor: MyColors.kWhiteColor,
                                      inactiveColor: MyColors.kWhiteColor,
                                    ),

                                    animationDuration:
                                        const Duration(milliseconds: 300),
                                    backgroundColor: Colors.transparent,
                                    enableActiveFill: true,
                                    // errorAnimationController: errorController,
                                    // controller: textEditingController,
                                    onCompleted: (v) {
                                      print("Completed");
                                    },
                                    onChanged: (value) {
                                      print(value);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          elevatedWidget(
                            title: 'تأكيد الحساب',
                            color: MyColors.kPrimaryColor,
                            onPressed: () {
                              Navigator.pushNamed(context, '/confirm_success');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
