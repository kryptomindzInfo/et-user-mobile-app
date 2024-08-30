import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupDebitCardReady extends StatefulWidget {
  const SignupDebitCardReady({super.key});

  @override
  State<SignupDebitCardReady> createState() => _SignupDebitCardReadyState();
}

class _SignupDebitCardReadyState extends State<SignupDebitCardReady> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 96.h,
              ),
              Text(
                MyText.compSignupDebitCardTitle,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                MyText.compSignupDebitCardsubTitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'WorkSans'),
              ),
              SizedBox(
                height: 160.h,
              ),
              Center(
                child: Image.asset(
                  AppAssets.debitcard,
                  height: 176.h,
                  width: 282.w,
                ),
              ),
              SizedBox(
                height: 160.h,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.primaryButton,
                          text: const Text(
                            MyText.compSignupDebitCardContinue,
                            style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => btmnavigation()));
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
