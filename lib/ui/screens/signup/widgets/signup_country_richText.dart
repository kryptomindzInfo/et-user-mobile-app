import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SignupCountryRichText extends StatefulWidget {

  const SignupCountryRichText({super.key});

  @override
  State<SignupCountryRichText> createState() => _SignupCountryRichTextState();
}

class _SignupCountryRichTextState extends State<SignupCountryRichText> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: MyText.signupCountrydescription,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'WorkSans'),
            ),
            TextSpan(
              text: MyText.termsAndConditions,
              style: TextStyle(
                  color: AppColors.greenText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'WorkSans'),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'WorkSans'),
            ),
            TextSpan(
              text: MyText.privacyPolicy,
              style: TextStyle(
                  color: AppColors.greenText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'WorkSans'),
            ),
            TextSpan(
              text: MyText.signupCountrydescription2,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'WorkSans'),
            ),
          ])),
    );
  }
}
