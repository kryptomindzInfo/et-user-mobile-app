import 'package:et_bank/controllers/signup/signup_email_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/identity%20flow/Identity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignupEmail extends StatefulWidget {
  SignupEmail({super.key});

  @override
  State<SignupEmail> createState() => _SignupEmailState();
}

class _SignupEmailState extends State<SignupEmail> {
  SignupEmailController signupEmailController =
      Get.put(SignupEmailController());

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
                MyText.signupEmailTitle,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: TextFieldWidget(
                        hintText: MyText.signupEmailhintText,
                        hintStyle: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'WorkSans'),
                        onChanged: (value) {
                          signupEmailController.setEmail(value);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Obx(
                () => Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                        color: signupEmailController.ButtonColor(),
                        text: Text(
                          MyText.signupEmailcontinue,
                          style: TextStyle(
                              color: signupEmailController.ButtonTextColor(),
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: signupEmailController.Email.value != ''
                            ? () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => screensoone()));
                              }
                            : () {}),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
