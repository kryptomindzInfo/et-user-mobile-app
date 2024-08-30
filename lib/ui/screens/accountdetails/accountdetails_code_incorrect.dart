import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_transferprocess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountCodeIncorrect extends StatelessWidget {
  AccountCodeIncorrect({super.key});
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountTransferProcess()));
              },
              child: BottomAppBar(
                height: 350.h,
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 350.w,
                        height: 320.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: AppColors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(27, 25, 27, 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 39.h,
                              ),
                              Container(
                                  width: 110.w,
                                  height: 110.h,
                                  child: Image.asset(
                                      AppAssets.code_incorrect_icon)),
                              SizedBox(
                                height: 32.h,
                              ),
                              Text(
                                MyText.verificationcodeincorrect,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
