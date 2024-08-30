import 'package:et_bank/controllers/signup/signup_code_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SettingsCode extends StatelessWidget {
  SettingsCode({super.key});

  final SignUpCodeController signUpCodeController =
      Get.put(SignUpCodeController());
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 79,
                ),
                Center(
                  child: Container(
                    width: 262.w,
                    height: 164.h,
                    child: Image.asset(AppAssets.settings_card_image),
                  ),
                ),
                SizedBox(
                  height: 74.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      child: TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: AppColors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'WorkSans'),
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            letterSpacing: 10,
                            fontWeight: FontWeight.w600),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.length == 6) {}
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Text(
                  MyText.cardpinchanged,
                  style: TextStyle(
                      color: AppColors.accountSubTitle,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyText.PINtriesexceeded,
                        style: TextStyle(
                            fontSize: 14,
                            color: AppColors.primary,
                            fontFamily: MyTextStyles.worksansFamily,
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
                child: Text(
                  MyText.disappearin6secons,
                  style: TextStyle(
                      color: AppColors.accountSubTitle,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
