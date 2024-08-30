import 'package:et_bank/controllers/signup/signup_name_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_DOB.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChildName extends StatefulWidget {
  ChildName({super.key});

  @override
  State<ChildName> createState() => _ChildNameState();
}

class _ChildNameState extends State<ChildName> {
  final ThemeController themeController = Get.put(ThemeController());
  SignupNameController signupNameController = Get.put(SignupNameController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.childBlue,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppColors.pink,
                height: 150.h,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 54, right: 21),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: themeController.bgColor.value,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 54),
                        child: Text(
                          MyText.ChildName,
                          style: TextStyle(
                              color: themeController.bgColor.value,
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 500.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              child: TextFieldWidget(
                                onChanged: (value) {
                                  if (value.length > 0) {
                                    signupNameController.setFirstName(true);
                                  } else {
                                    signupNameController.setFirstName(false);
                                  }
                                },
                                hintText: MyText.signupNamehintText1,
                                hintStyle: TextStyle(
                                    color: AppColors.childText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          MyText.signupNameDanial,
                          style: TextStyle(
                              color: AppColors.childText,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.soraFamily),
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
                                color: AppColors.childText,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                height: 150.h,
                elevation: 0,
                color: AppColors.pink,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                        color: AppColors.childDarkBlue,
                        text: Text(
                          MyText.signupNamecontinue,
                          style: TextStyle(
                              color: AppColors.childDarkText,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChildDOB()));
                        }),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
