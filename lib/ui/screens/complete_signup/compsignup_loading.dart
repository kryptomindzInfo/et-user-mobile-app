import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';

import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_debitcard_ready.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupLoading extends StatefulWidget {
  CompSignupLoading({super.key});

  @override
  State<CompSignupLoading> createState() => _CompSignupLoadingState();
}

class _CompSignupLoadingState extends State<CompSignupLoading> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SignupDebitCardReady(),
      ));
    });

    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppAssets.leftarrow,
                        width: 25.12.w,
                        height: 17.94.h,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              height: 320.h,
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 350.w,
                      height: 280.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 13, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 39.h,
                            ),
                            Container(
                                width: 110.w,
                                height: 110.h,
                                child: CircularProgressIndicator(
                                  color: AppColors.primary,
                                )),
                            SizedBox(
                              height: 21.h,
                            ),
                            Text(
                              MyText.compSignupCheckOutOrderPlaced,
                              style: TextStyle(
                                  color: AppColors.greyText2,
                                  fontFamily: 'WorkSans',
                                  fontSize: 24,
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
          );
        }),
      ),
    );
  }
}
