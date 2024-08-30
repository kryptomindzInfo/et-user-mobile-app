import 'package:et_bank/controllers/crypto_flow/crypto_dot_alert_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_last.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TopMoversLast extends StatefulWidget {
  TopMoversLast({super.key});

  @override
  State<TopMoversLast> createState() => _TopMoversLastState();
}

class _TopMoversLastState extends State<TopMoversLast> {
  CryptoDotAlertController controller = Get.put(CryptoDotAlertController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 45.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          MyText.TopMovers,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                MyText.Discoverthebestandworst,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(
                    width: 85.w,
                    child: ButtonWidget(
                        color: AppColors.yellowButton,
                        text: Row(
                          children: [
                            Image.asset(
                              AppAssets.crypto_all,
                              height: 17.h,
                              width: 17.w,
                              color: AppColors.blackText,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              MyText.All,
                              style: TextStyle(
                                  color: AppColors.blackText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: MyTextStyles.soraFamily),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CryptoLast()));
                        }),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    width: 105.w,
                    child: ButtonWidget(
                        color: AppColors.yellowButton,
                        text: Row(
                          children: [
                            Image.asset(
                              AppAssets.crypto_calendar,
                              height: 17.h,
                              width: 17.w,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              MyText.Day1,
                              style: TextStyle(
                                  color: AppColors.blackText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: MyTextStyles.soraFamily),
                            ),
                          ],
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
              SizedBox(
                height: 64.h,
              ),
              Center(
                child: Text(
                  MyText.Discoverallcrypto,
                  style: TextStyle(
                      color: AppColors.greenText,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w),
                child: Center(
                    child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: MyText.CapitalatriskPastperformance,
                        style: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      TextSpan(
                        text: MyText.learnmore,
                        style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
