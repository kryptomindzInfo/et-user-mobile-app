import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/esim_checkout.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';


class SubsScribeWidget extends StatefulWidget {

  SubsScribeWidget(
      {super.key,
      this.title,
      this.subtitle,
      this.noOfCalls,
      this.noOfMessages,
      this.amountOfInternet,
      this.buttonText});

  String? title;
  String? subtitle;
  String? noOfCalls;
  String? noOfMessages;
  String? amountOfInternet;
  String? buttonText;

  @override
  State<SubsScribeWidget> createState() => _SubsScribeWidgetState();
}

class _SubsScribeWidgetState extends State<SubsScribeWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteBox4, borderRadius: BorderRadius.circular(22)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 18, 15, 18),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.activate_esim,
                  height: 42.h,
                  width: 42.w,
                ),
                SizedBox(
                  width: 18.w,
                ),
                Container(
                  width: 230.w,
                  child: Text(
                    widget.title ?? MyText.SubscribeOurProAccountPlan,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                widget.subtitle ?? MyText.SubscribeOurProAccountPlandesc,
                style: TextStyle(
                    color: themeController.bgColor.value,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.noOfCalls ?? '100 min ',
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                      TextSpan(
                        text: MyText.Call,
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.noOfMessages ?? '100 ',
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                      TextSpan(
                        text: MyText.TextMessages,
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.amountOfInternet ?? '100 GB ',
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                      TextSpan(
                        text: MyText.Internet,
                        style: TextStyle(
                          color: themeController.bgColor.value,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            ButtonWidget(
                color: AppColors.whiteButton,
                text: Text(
                  widget.buttonText ?? MyText.SubscribeNow,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EsimCheckOut()));
                })
          ],
        ),
      ),
    );
  }
}
