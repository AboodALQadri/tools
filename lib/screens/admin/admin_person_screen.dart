import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/person/person_elevated_widget.dart';
import 'package:tools/widgets/person/person_text_field_widget.dart';

class AdminPersonScreen extends StatelessWidget {
   AdminPersonScreen({Key? key}) : super(key: key);

  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _settingsTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.kGreenColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 110, top: 30),
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: const CircleAvatar(
              radius: 200,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1534083264897-aeabfc7daf8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 155, right: 108),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: CircleAvatar(
              backgroundColor: MyColors.kWhiteColor,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               SizedBox(
                height: 215,
              ),
              Container(
                width: double.infinity,
                height: 374,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.1,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      personTextFieldWidget(
                        controller: _nameTextController,
                        validator: () {},
                        textInputType: TextInputType.text,
                        hintText: 'إسم المتخدم',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                      personTextFieldWidget(
                        controller: _emailTextController,
                        validator: () {},
                        textInputType: TextInputType.emailAddress,
                        hintText: 'البريد الألكتروني',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                      personTextFieldWidget(
                        controller: _phoneTextController,
                        maxLength: 10,
                        validator: () {},
                        textInputType: TextInputType.number,
                        hintText: 'رقم الهاتف',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                      personTextFieldWidget(
                        controller: _passwordTextController,
                        validator: () {},
                        textInputType: TextInputType.text,
                        hintText: 'كلمة المرور',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                      personTextFieldWidget(
                        controller: _settingsTextController,
                        readOnly: true,
                        validator: () {},
                        hintText: 'الإعدادات',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      personElevatedWidget(
                        text: 'تسجيل خروج',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
