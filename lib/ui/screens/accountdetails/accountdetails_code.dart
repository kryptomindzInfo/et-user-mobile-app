import 'package:et_bank/controllers/accountDetails_Flow/accountdetails_code_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_code_incorrect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AccountDetailsCode extends StatelessWidget {
  AccountDetailsCode({super.key});

  final AccountDetailsCodeController controller =
      Get.put(AccountDetailsCodeController());
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
                            builder: (context) => AccountCodeIncorrect()));
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
                cursorColor: AppColors.greenText,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 48.h,
                  fieldWidth: 34.w,
                  activeFillColor: AppColors.greyText2,
                  inactiveColor: AppColors.textFieldBorderColor,
                  inactiveFillColor: AppColors.greyText2,
                  selectedColor: AppColors.greenText,
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
              //         focusNode: controller.firstFocusNode,
              //         keyboardType: TextInputType.number,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             controller.firstFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.secondFocusNode);
              //           }
              //         },
              //       ),
              //     ),
              //     const SizedBox(width: 16),
              //     SizedBox(
              //       width: 34,
              //       child: TextFieldWidget(
              //         focusColor: AppColors.primary,
              //         focusNode: controller.secondFocusNode,
              //         keyboardType: TextInputType.number,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.thirdFocusNode);
              //           } else if (value.length == 0) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.firstFocusNode);
              //           }
              //         },
              //       ),
              //     ),
              //     const SizedBox(width: 16),
              //     SizedBox(
              //       width: 34,
              //       child: TextFieldWidget(
              //         focusColor: AppColors.primary,
              //         focusNode: controller.thirdFocusNode,
              //         keyboardType: TextInputType.number,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             controller.thirdFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.fourthFocusNode);
              //           } else if (value.length == 0) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.secondFocusNode);
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
              //         focusNode: controller.fourthFocusNode,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             controller.thirdFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.fifthFocusNode);
              //           } else if (value.length == 0) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.thirdFocusNode);
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
              //         focusNode: controller.fifthFocusNode,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             controller.thirdFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.sixthFocusNode);
              //           } else if (value.length == 0) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.fourthFocusNode);
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
              //         focusNode: controller.sixthFocusNode,
              //         onChanged: (value) {
              //           if (value.length >= 1) {
              //             Navigator.push(
              //                 context,
              //                 MaterialPageRoute(
              //                     builder: (context) => AccountCodeIncorrect()));
              //           } else if (value.length == 0) {
              //             controller.secondFocusNode.unfocus();
              //             FocusScope.of(context)
              //                 .requestFocus(controller.fifthFocusNode);
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
    );
  }
}
