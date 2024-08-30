import 'dart:io';

import 'package:et_bank/controllers/image_picker/image.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/complete_signup/etbank_useFor.dart';

import 'package:et_bank/ui/screens/identity%20flow/frontlicense.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/widgets/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class identitylicenseback extends StatelessWidget {
  final ImagePickerController _controller = Get.put(ImagePickerController());

  identitylicenseback({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          centerTitle: true,
          leading: Image.asset(
            AppAssets.arrow,
            width: 19.26.w,
            height: 9.55.h,
            color: AppColors.primaryText,
          ),
          title: Text(
            MyText.licapp,
            style: MyTextStyles.worknormal(
                fontsize: 16.sp, color: AppColors.primaryText),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 209.h,
                  bottom: 30.h,
                ),
                child: Obx(
                  () => _controller.imagepathforbacklicense.value.isNotEmpty
                      ? Container(
                          width: 343.w,
                          height: 226.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: FileImage(File(_controller
                                  .imagepathforbacklicense
                                  .toString())),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(27.r),
                          ),
                        )
                      : Container(
                          width: 343.w,
                          height: 226.h,
                          decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(27.r),
                          ),
                          child: InkWell(
                              onTap: () {},
                              child: Image.asset(
                                AppAssets.camera,
                                width: 64.w,
                                height: 65.59.h,
                                color: AppColors.primaryText,
                              )),
                        ),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    MyText.lic1,
                    textAlign: TextAlign.center,
                    style: MyTextStyles.worknormal(
                        fontsize: 16.sp, color: AppColors.greyText2),
                  )),
              SizedBox(
                height: 25.h,
              ),
              RoundButton(
                color: AppColors.primaryButton,
                title: "My license is readable",
                onTap: () {
                  Get.to(CompSignupBankUsedFor());
                },
                borderColor: AppColors.primaryButton,
                textColor: AppColors.btnText,
              ),
              SizedBox(
                height: 10.h,
              ),
              RoundButton(
                color: AppColors.blackButton,
                title: "Take a new picture",
                onTap: () {
                  Get.to(Frontlicense());
                },
                textColor: AppColors.greenText,
                borderColor: AppColors.greenText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
