import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/Iconbutton_widget.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/or_divider.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/signin/signin_passcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignInBottomAppBar extends StatefulWidget {
  SignInBottomAppBar({super.key});

  @override
  State<SignInBottomAppBar> createState() => _SignInBottomAppBarState();
}

class _SignInBottomAppBarState extends State<SignInBottomAppBar> {
  final ThemeController themeController = Get.put(ThemeController());

  SigninMobileNoController controller = Get.put(SigninMobileNoController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() {
        return Column(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: ButtonWidget(
                  color: controller.getButtonColor(),
                  text: Text(
                    MyText.signInMobileContinue,
                    style: TextStyle(
                        color: controller.getButtonTextColor(),
                        fontFamily: MyTextStyles.worksansFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: controller.mobileNo.value == ''
                      ? () {}
                      : () {
                          Get.to(
                            SignInCode(),
                          );
                        }),
            ),
            SizedBox(
              height: 16.h,
            ),
            OrDivider(),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: ImageButtonWidget(
                  image: AppAssets.emailIcon,
                  color: AppColors.secondaryButton,
                  text: MyText.signInMobileContinueWithEmail,
                  textStyle: TextStyle(
                      color: AppColors.whiteText,
                      fontFamily: 'WorkSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  onPressed: () {
                    Get.to(
                      SignInCode(),
                    );
                  }),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 56.h,
              width: 327.w,
              child: ImageButtonWidget(
                  image: AppAssets.googleIcon,
                  color: AppColors.secondaryButton,
                  text: MyText.signInMobileContinueWithGoogle,
                  textStyle: TextStyle(
                      color: AppColors.whiteText,
                      fontFamily: 'WorkSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  onPressed: () {}),
            ),
          ],
        );
      }),
    );
  }
}
