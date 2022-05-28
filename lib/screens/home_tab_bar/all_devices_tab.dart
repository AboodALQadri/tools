import 'package:flutter/material.dart';
import 'package:tools/constants/my_colors.dart';
import 'package:tools/widgets/text_utils.dart';

class AllDevicesTab extends StatelessWidget {
  AllDevicesTab({Key? key}) : super(key: key);

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Container(
                          alignment: Alignment.center,
                          width: 64,
                          height: 32,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? MyColors.kPrimaryColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: MyColors.kPrimaryColor,
                            ),
                          ),
                          child: TextUtils(
                            text: 'لابتوبات',
                            color: isSelected
                                ? Colors.white
                                : MyColors.kPrimaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            underLine: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 8,
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView.separated(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    width: 328,
                    height: 120,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: ListTile(
                        leading: Image.network(
                          'https://images.unsplash.com/photo-1653565081240-7cf4b5ea5b79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        title: const TextUtils(
                          text: 'الجهاز الأول',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          underLine: TextDecoration.none,
                        ),
                        subtitle: TextUtils(
                          text: 'عبوود القادري',
                          color: MyColors.kWhiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          underLine: TextDecoration.none,
                        ),
                        trailing: Container(
                          margin: EdgeInsets.only(bottom: 30),
                          width: 64,
                          height: 32,
                          decoration: BoxDecoration(
                            color: MyColors.kPrimaryColor,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: MyColors.kPrimaryColor,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: const TextUtils(
                              text: 'مستعارة',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              underLine: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
