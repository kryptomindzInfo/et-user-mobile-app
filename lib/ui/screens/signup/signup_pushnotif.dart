import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/signup/signup_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupPushNotif extends StatefulWidget {
  const SignupPushNotif({super.key});

  @override
  State<SignupPushNotif> createState() => _SignupPushNotifState();
}

class _SignupPushNotifState extends State<SignupPushNotif> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 54, right: 54),
                    child: InkWell(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 54),
                    child: Image.asset(
                      AppAssets.etbankLogo,
                      height: 51.h,
                      width: 188.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              Text(
                MyText.signupNotifTitle,
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
                MyText.signupNotifsubTitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'WorkSans'),
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: Image.asset(
                  AppAssets.notifImage,
                  height: 294.h,
                  width: 144.w,
                ),
              ),
              SizedBox(
                height: 47.h,
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
                            MyText.signupNotifEnableNotif,
                            style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupCountry()));
                          }),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.secondaryButton2,
                          text: Text(
                            MyText.signupNotifNotnow,
                            style: TextStyle(
                              color: AppColors.blackText,
                              fontFamily: 'WorkSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
