import 'dart:io';

import 'package:et_bank/controllers/image_picker/image.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class backlicense extends StatefulWidget {
  backlicense({super.key});

  @override
  State<backlicense> createState() => _backlicenseState();
}

class _backlicenseState extends State<backlicense> {
  final ImagePickerController _controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            centerTitle: true,
            leading: Image.asset(
              AppAssets.arrow,
              width: 19.26.w,
              height: 9.55.h,
              color: AppColors.primaryText,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: Container(
                  width: 390.w,
                  height: 528.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 145.h),
                        child: _controller
                                .imagepathforbacklicense.value.isNotEmpty
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
                            : _controller.isImageLoading.value
                                ? Container(
                                    width: 343.w,
                                    height: 226.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(27.r),
                                        border: Border.all(
                                            color: AppColors.greenText,
                                            width: 1.w)),
                                    child: Center(
                                      child: Container(
                                        width: 71.8.w,
                                        height: 71.8.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: AppColors.greenText,
                                                width: 1.w)),
                                        child: Center(
                                            child: Image.asset(
                                          AppAssets.yes,
                                          width: 33.37.w,
                                          height: 23.93.h,
                                        )),
                                      ),
                                    ))
                                : Container(
                                    width: 343.w,
                                    height: 226.h,
                                    decoration: BoxDecoration(
                                      color: AppColors.greyBox,
                                      borderRadius: BorderRadius.circular(27.r),
                                    ),
                                    child: Image.asset(
                                      AppAssets.camera,
                                      width: 64.w,
                                      height: 65.59.h,
                                      color: AppColors.primaryText,
                                    ),
                                  ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Align(
                        child: Text(
                          MyText.backd,
                          style: MyTextStyles.workfont(
                            fontsize: 20.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Align(
                        child: Text(
                          MyText.posiyionof,
                          style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Align(
                        child: Text(
                          MyText.frame,
                          style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.greyText2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(() {
                _controller.imagepathforbacklicense.value;
                return GestureDetector(
                  onTap: () {
                    _controller.pickImageforbacklicense();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 45.h),
                    child: Align(
                        child: Container(
                      width: 70.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: AppColors.primaryText, width: 2.w)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.h, horizontal: 2.h),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    )),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
