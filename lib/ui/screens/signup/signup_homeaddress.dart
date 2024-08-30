import 'package:et_bank/controllers/signup/signup_homeaddress_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/signup/signup_email.dart';
import 'package:et_bank/ui/screens/signup/widgets/signup_homeaddress_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());

class SignupHomeAddress extends StatefulWidget {
  SignupHomeAddress({super.key});

  @override
  State<SignupHomeAddress> createState() => _SignupHomeAddressState();
}

class _SignupHomeAddressState extends State<SignupHomeAddress> {
  SignupHomeAddressController signupHomeAddressController =
      Get.put(SignupHomeAddressController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          backgroundColor: themeController.bgColor.value,
          body: SingleChildScrollView(
            child: Padding(
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
                    MyText.signupHomeAddressTitle,
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
                    MyText.signupHomeAddresssubTitle,
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
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48.h,
                          width: 336.w,
                          child: Obx(
                            () => TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          side: BorderSide(
                                              color: AppColors.greyText2)))),
                              onPressed: () {
                                showHomeAddressModalBottomSheet(context);
                              },
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  signupHomeAddressController
                                      .postCodeText.value,
                                  style: TextStyle(
                                    color: signupHomeAddressController
                                        .setpostCodeTextColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          hintText: MyText.signupHomeAddresshintText2,
                          hintStyle: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'WorkSans'),
                          onChanged: (value) {
                            signupHomeAddressController
                                .Addressline01Text.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          hintText: MyText.signupHomeAddresshintText3,
                          hintStyle: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'WorkSans'),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    MyText.signupHomeAddressOptional,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'WorkSans'),
                  ),
                  SizedBox(
                    height: 0.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          hintText: MyText.signupHomeAddresshintText4,
                          hintStyle: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'WorkSans'),
                          onChanged: (value) {
                            signupHomeAddressController.CityText.value = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Builder(
            builder: (context) {
              final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
              return Obx(
                () => Padding(
                  padding: EdgeInsets.only(bottom: keyboardHeight),
                  child: BottomAppBar(
                    elevation: 0,
                    color: themeController.bgColor.value,
                    child: Center(
                      child: SizedBox(
                        height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: signupHomeAddressController.setButtonColor(),
                            text: Text(
                              MyText.signupHomeAddresscontinue,
                              style: TextStyle(
                                  color: signupHomeAddressController
                                      .setButtonTextColor(),
                                  fontFamily: 'WorkSans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed:
                                signupHomeAddressController.setButtonColor() ==
                                        AppColors.greenText
                                    ? () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignupEmail()));
                                      }
                                    : () {}),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
