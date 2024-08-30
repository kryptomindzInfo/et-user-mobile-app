import 'package:et_bank/controllers/complete_signup/comp_signup_createpin.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_confirmpin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupCode extends StatefulWidget {
  CompSignupCode({super.key});

  @override
  State<CompSignupCode> createState() => _CompSignupCodeState();
}

class _CompSignupCodeState extends State<CompSignupCode> {
  CompSignUpCreatePinController compSignUpCreatePinController =
      Get.put(CompSignUpCreatePinController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    width: 16,
                  ),
                  Text(
                    MyText.compSignupCodeTitle,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Sora'),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                MyText.compSignupCodesubTitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'WorkSans'),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 34,
                    child: TextFieldWidget(
                      obscureText: true,
                      focusColor: AppColors.greenText,
                      focusNode: compSignUpCreatePinController.firstFocusNode,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.length >= 1) {
                          compSignUpCreatePinController.firstFocusNode
                              .unfocus();
                          FocusScope.of(context).requestFocus(
                              compSignUpCreatePinController.secondFocusNode);
                        }
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 34.w,
                    child: TextFieldWidget(
                      obscureText: true,
                      focusColor: AppColors.greenText,
                      focusNode: compSignUpCreatePinController.secondFocusNode,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.length >= 1) {
                          compSignUpCreatePinController.firstFocusNode
                              .unfocus();
                          FocusScope.of(context).requestFocus(
                              compSignUpCreatePinController.thirdFocusNode);
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 16.w),
                  SizedBox(
                    width: 34.w,
                    child: TextFieldWidget(
                      obscureText: true,
                      focusColor: AppColors.greenText,
                      focusNode: compSignUpCreatePinController.thirdFocusNode,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.length >= 1) {
                          compSignUpCreatePinController.firstFocusNode
                              .unfocus();
                          FocusScope.of(context).requestFocus(
                              compSignUpCreatePinController.fourthFocusNode);
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 16.w),
                  SizedBox(
                    width: 34.w,
                    child: TextFieldWidget(
                      obscureText: true,
                      focusColor: AppColors.greenText,
                      focusNode: compSignUpCreatePinController.fourthFocusNode,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.length >= 1) {
                          compSignUpCreatePinController.firstFocusNode
                              .unfocus();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CompSignupConfirmCode()));
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 16.w),
                ],
              ),
              SizedBox(
                height: 20.h,
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
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: const Text(
                        MyText.compSignupBankUsedForContinue,
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompSignupConfirmCode()));
                      }),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
