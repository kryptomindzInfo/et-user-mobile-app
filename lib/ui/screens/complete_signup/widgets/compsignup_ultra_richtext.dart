import 'package:et_bank/controllers/complete_signup/comp_signup_chooseaccount_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupUltraAccountRichText extends StatefulWidget {
  CompSignupUltraAccountRichText({super.key});

  @override
  State<CompSignupUltraAccountRichText> createState() =>
      _CompSignupUltraAccountRichTextState();
}

class _CompSignupUltraAccountRichTextState
    extends State<CompSignupUltraAccountRichText> {
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
              compSignupBankChooseAccountController.accountSelected.value == 3
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
                  text: 'Priced at ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: '£49.99 ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sora',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'per month.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
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

          /// Second Row

          Row(
            children: [
              compSignupBankChooseAccountController.accountSelected.value == 3
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
                  text: 'Include ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'a Platinum Card and virtual card.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
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
              compSignupBankChooseAccountController.accountSelected.value == 3
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
                  text:
                      '''Premium banking & exclusive perk like \n airport lounge access.''',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorUltraAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
