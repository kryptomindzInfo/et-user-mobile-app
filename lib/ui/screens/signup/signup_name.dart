import 'package:et_bank/controllers/signup/signup_name_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/signup/signup_dateofbirth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupName extends StatefulWidget {
  SignupName({super.key});

  @override
  State<SignupName> createState() => _SignupNameState();
}

class _SignupNameState extends State<SignupName> {
  SignupNameController signupNameController = Get.put(SignupNameController());

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
                MyText.signupNameTitle,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
              // SizedBox(
              //   height: 14.h,
              // ),
              Text(
                MyText.signupNamesubTitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'WorkSans'),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: TextFieldWidget(
                        style: TextStyle(color: AppColors.primaryText),
                        onChanged: (value) {
                          if (value.length > 0) {
                            signupNameController.setFirstName(true);
                          } else {
                            signupNameController.setFirstName(false);
                          }
                        },
                        hintText: MyText.signupNamehintText1,
                        hintStyle: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'WorkSans'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.0, top: 4.h),
                child: Text(
                  MyText.signupNameDanial,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora'),
                ),
              ),
              SizedBox(
                height: 0.h,
              ),
              Expanded(
                child: SizedBox(
                  child: TextFieldWidget(
                    onChanged: (value) {
                      if (value.length > 0) {
                        signupNameController.setLastName(true);
                      } else {
                        signupNameController.setLastName(false);
                      }
                    },
                    hintText: MyText.signupNamehintText2,
                    hintStyle: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'WorkSans'),
                  ),
                ),
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
                    color: signupNameController.firstName.value == true &&
                            signupNameController.lastName.value == true
                        ? AppColors.primaryButton
                        : AppColors.disableButton,
                    text: Text(
                      MyText.signupNamecontinue,
                      style: TextStyle(
                          color: signupNameController.firstName.value == true &&
                                  signupNameController.lastName.value == true
                              ? AppColors.btnText
                              : AppColors.disableBtnText,
                          fontFamily: 'WorkSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: signupNameController.firstName.value == true &&
                            signupNameController.lastName.value == true
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupDOB()));
                          }
                        : () {},
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
