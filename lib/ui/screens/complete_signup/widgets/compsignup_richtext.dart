import 'package:et_bank/controllers/complete_signup/comp_signup_chooseaccount_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupStandardAccountRichText extends StatefulWidget {
  CompSignupStandardAccountRichText({super.key});

  @override
  State<CompSignupStandardAccountRichText> createState() =>
      _CompSignupStandardAccountRichTextState();
}

class _CompSignupStandardAccountRichTextState
    extends State<CompSignupStandardAccountRichText> {
  CompSignupBankChooseAccountController compSignupBankChooseAccountController =
      Get.put(CompSignupBankChooseAccountController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14),
      child: Column(
        children: [
          // First Row

          Row(
            children: [
              compSignupBankChooseAccountController.accountSelected.value == 1
                  ? Image.asset(AppAssets.iconDot)
                  : Image.asset(
                      AppAssets.iconDotWhite,
                      color: AppColors.primaryText,
                    ),
              SizedBox(
                width: 16.w,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'A ',
                      style: TextStyle(
                          color: compSignupBankChooseAccountController
                              .textBackgroundColorStandardAccount(),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'WorkSans',
                          fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'Simple and Free ',
                      style: TextStyle(
                          color: compSignupBankChooseAccountController
                              .textBackgroundColorStandardAccount(),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'WorkSans',
                          fontStyle: FontStyle.italic),
                    ),
                    TextSpan(
                      text: 'option for everyday banking.',
                      style: TextStyle(
                          color: compSignupBankChooseAccountController
                              .textBackgroundColorStandardAccount(),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'WorkSans',
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: 8.h,
          ),

          /// Second Row

          Row(
            children: [
              compSignupBankChooseAccountController.accountSelected.value == 1
                  ? Image.asset(AppAssets.iconDot)
                  : Image.asset(
                      AppAssets.iconDotWhite,
                      color: AppColors.primaryText,
                    ),
              SizedBox(
                width: 16.w,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Get a ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorStandardAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'free physical and virtual card.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorStandardAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
              ])),
            ],
          ),

          SizedBox(
            height: 8.h,
          ),

          // Third Row

          Row(
            children: [
              compSignupBankChooseAccountController.accountSelected.value == 1
                  ? Image.asset(AppAssets.iconDot)
                  : Image.asset(
                      AppAssets.iconDotWhite,
                      color: AppColors.primaryText,
                    ),
              SizedBox(
                width: 16.w,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Additional cards available for ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorStandardAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'for £7.99.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorStandardAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
              ])),
            ],
          ),
        ],
      ),
    );
  }
}
