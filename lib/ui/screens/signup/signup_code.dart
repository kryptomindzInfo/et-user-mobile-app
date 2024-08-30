import 'package:et_bank/controllers/signup/signup_code_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/signup/signup_pushnotif.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignupCode extends StatefulWidget {
  SignupCode({super.key});

  @override
  State<SignupCode> createState() => _SignupCodeState();
}

class _SignupCodeState extends State<SignupCode> {
  final SignUpCodeController signUpCodeController =
      Get.put(SignUpCodeController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
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
                          color: AppColors.primaryButton,
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
                  MyText.signupCodeTitle,
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
                  MyText.signupCodesubTitle,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'WorkSans'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                PinCodeTextField(
                  onChanged: (value) {
                    if (value.length >= 6) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPushNotif()));
                    }
                  },
                  autoFocus: true,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'WorkSans',
                      color: AppColors.primaryText),
                  keyboardType: TextInputType.number,
                  appContext: context,
                  length: 6,
                  pastedTextStyle: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  cursorColor: AppColors.primary,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 48.h,
                    fieldWidth: 34.w,
                    activeFillColor: AppColors.greyText2,
                    inactiveColor: AppColors.textFieldBorderColor,
                    inactiveFillColor: AppColors.greyText2,
                    selectedColor: AppColors.primary,
                    activeColor: AppColors.textFieldBorderColor,
                  ),
                ),
                // Row(
                //   children: [
                //     SizedBox(
                //       width: 34,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         autofocus: true,
                //         focusNode: signUpCodeController.firstFocusNode,
                //         keyboardType: TextInputType.number,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             signUpCodeController.firstFocusNode.unfocus();
                //             FocusScope.of(context).requestFocus(
                //                 signUpCodeController.secondFocusNode);
                //           }
                //         },
                //       ),
                //     ),
                //     const SizedBox(width: 16),
                //     SizedBox(
                //       width: 34,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         focusNode: signUpCodeController.secondFocusNode,
                //         keyboardType: TextInputType.number,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             signUpCodeController.secondFocusNode.unfocus();
                //             FocusScope.of(context).requestFocus(
                //                 signUpCodeController.thirdFocusNode);
                //           }
                //         },
                //       ),
                //     ),
                //     const SizedBox(width: 16),
                //     SizedBox(
                //       width: 34,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         focusNode: signUpCodeController.thirdFocusNode,
                //         keyboardType: TextInputType.number,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             signUpCodeController.thirdFocusNode.unfocus();
                //             FocusScope.of(context).requestFocus(
                //                 signUpCodeController.fourthFocusNode);
                //           }
                //         },
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 6, top: 20, right: 6),
                //       child: SizedBox(
                //           child: Text(
                //         '-',
                //         style: TextStyle(
                //             color: AppColors.white,
                //             fontSize: 26,
                //             fontWeight: FontWeight.w500,
                //             fontFamily: 'Sora'),
                //       )),
                //     ),
                //     SizedBox(
                //       width: 34.w,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         keyboardType: TextInputType.number,
                //         focusNode: signUpCodeController.fourthFocusNode,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             signUpCodeController.thirdFocusNode.unfocus();
                //             FocusScope.of(context).requestFocus(
                //                 signUpCodeController.fifthFocusNode);
                //           }
                //         },
                //       ),
                //     ),
                //     SizedBox(width: 16.w),
                //     SizedBox(
                //       width: 34.w,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         keyboardType: TextInputType.number,
                //         focusNode: signUpCodeController.fifthFocusNode,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             signUpCodeController.thirdFocusNode.unfocus();
                //             FocusScope.of(context).requestFocus(
                //                 signUpCodeController.sixthFocusNode);
                //           }
                //         },
                //       ),
                //     ),
                //     SizedBox(width: 16.w),
                //     SizedBox(
                //       width: 34.w,
                //       child: TextFieldWidget(
                //         focusColor: AppColors.primary,
                //         keyboardType: TextInputType.number,
                //         focusNode: signUpCodeController.sixthFocusNode,
                //         onChanged: (value) {
                //           if (value.length >= 1) {
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) =>
                //                         const SignupPushNotif()));
                //           }
                //         },
                //       ),
                //     ),
                //     SizedBox(width: 16.w),
                //   ],
                // ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  MyText.signupCodeResendCode,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora'),
                ),
                Row(
                  children: [
                    Text(
                      MyText.signupCodealredyAccount,
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greenText,
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyText.signupCodeLogin,
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greenText,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
                      text: Text(
                        MyText.signupMobileSignup,
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            color: AppColors.btnText,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPushNotif()));
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
