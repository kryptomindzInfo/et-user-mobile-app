import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/white_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TransferAddNewContact extends StatelessWidget {
  TransferAddNewContact({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppAssets.leftarrow,
                        width: 25.12.w,
                        height: 17.94.h,
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    Text(
                      MyText.Addnewcontact,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.name,
                hintText: MyText.name,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.phoneNoText,
                hintText: MyText.phoneNoText,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
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
                        MyText.AddText,
                        style: TextStyle(
                          fontFamily: MyTextStyles.worksansFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryText
                        ),
                      ),
                      onPressed: () {}),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
