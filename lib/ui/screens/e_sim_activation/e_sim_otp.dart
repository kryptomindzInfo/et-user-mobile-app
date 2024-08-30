import 'package:et_bank/controllers/signup/signup_code_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/benefits_of_esim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ESimOtp extends StatefulWidget {
  ESimOtp({super.key});

  @override
  State<ESimOtp> createState() => _ESimOtpState();
}

class _ESimOtpState extends State<ESimOtp> {
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
                      padding: const EdgeInsets.only(top: 10, right: 20),
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
                      child: Text(
                        MyText.EnterOTPforconfirmation,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.OTPCodesentto,
                  style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily,
                  ),
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
                              builder: (context) => BenifitsOfEsim()));
                    }
                  },
                  autoFocus: true,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.worksansFamily,
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
                      text:  Text(
                        MyText.continu,
                        style: TextStyle(
                          fontFamily: MyTextStyles.worksansFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.btnText,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BenifitsOfEsim()));
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
