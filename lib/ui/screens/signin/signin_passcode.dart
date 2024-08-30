import 'package:et_bank/controllers/singin/signin_code_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignInCode extends StatefulWidget {
  SignInCode({super.key});

  @override
  State<SignInCode> createState() => _SignInCodeState();
}

class _SignInCodeState extends State<SignInCode> {
  SigninCodeController controller = Get.put(SigninCodeController());

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
                    child: Text(
                      MyText.signInCodeAppbarText,
                      style: TextStyle(
                          fontSize: 26,
                          color: AppColors.primaryText,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 195.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    child: TextFormField(
                      onChanged: (value) {
                        controller.code.value = value;
                      },
                      autofocus: true,
                      // style:  TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: MyText.signInCodehintText,
                        hintStyle: TextStyle(
                            color: AppColors.lightGreyText,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'WorkSans'),
                      ),
                      obscureText: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 30,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Obx(() {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              height: 100,
              elevation: 0,
              color: themeController.bgColor.value,
              child: Column(
                children: [
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        MyText.signInCodeForgotPassword,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greenText,
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: controller.getButtonColor(),
                          text: Text(
                            MyText.signupEmailcontinue,
                            style: TextStyle(
                                color: controller.getButtonTextColor(),
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: controller.code.value == ''
                              ? () {}
                              : () {
                                  Get.to(
                                    btmnavigation(),
                                  );
                                  
                                }),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
