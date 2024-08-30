import 'package:et_bank/controllers/complete_signup/comp_signup_chooseaccount_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupProAccountRichText extends StatefulWidget {
  CompSignupProAccountRichText({super.key});

  @override
  State<CompSignupProAccountRichText> createState() =>
      _CompSignupProAccountRichTextState();
}

class _CompSignupProAccountRichTextState
    extends State<CompSignupProAccountRichText> {
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
              compSignupBankChooseAccountController.accountSelected.value == 2
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
                          .textBackgroundColorProAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: '£9.99 ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorProAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sora',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'per month.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorProAccount(),
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
              compSignupBankChooseAccountController.accountSelected.value == 2
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
                          .textBackgroundColorProAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'a Sleek metal Card and virtual card.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorProAccount(),
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
              compSignupBankChooseAccountController.accountSelected.value == 2
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
                  text: 'A ',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorProAccount(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'Competitive 4.98% APR.',
                  style: TextStyle(
                      color: compSignupBankChooseAccountController
                          .textBackgroundColorProAccount(),
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
