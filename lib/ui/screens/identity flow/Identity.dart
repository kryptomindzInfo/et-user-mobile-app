import 'dart:io';
import 'package:et_bank/controllers/image_picker/image.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/identity%20flow/createpasscode.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class screensoone extends StatefulWidget {
  screensoone({super.key});

  @override
  State<screensoone> createState() => _screensooneState();
}

class _screensooneState extends State<screensoone> {
  final ImagePickerController _controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 70.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  applocal.identity1,
                  textAlign: TextAlign.center,
                  style: MyTextStyles.sora(
                    fontsize: 26,
                    color: AppColors.primaryText,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => _controller.imagepath.value.isNotEmpty
                        ? Container(
                            width: 257.w,
                            height: 311.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.r),
                              image: DecorationImage(
                                image: FileImage(
                                    File(_controller.imagepath.toString())),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : Container(
                            width: 257.w,
                            height: 311.h,
                            decoration: BoxDecoration(
                              color: AppColors.greyBox,
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: InkWell(
                              onTap: () {
                                _controller.pickImageFromCameraWithLoading();
                              },
                              child: _controller.isImageLoading.value
                                  ? Container(
                                      width: 257.w,
                                      height: 311.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: AppColors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 25, 13, 0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 39.h,
                                            ),
                                            Container(
                                                width: 110.w,
                                                height: 110.h,
                                                child: Center(
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: AppColors.primary,
                                                  ),
                                                )),
                                            SizedBox(
                                              height: 21.h,
                                            ),
                                            Text("Done!",
                                                style: MyTextStyles.workfont(
                                                    fontsize: 24.sp,
                                                    color: AppColors.buttongrey,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 64.w,
                                      height: 65.59.h,
                                      child: Image.asset(
                                        AppAssets.camera,
                                      ),
                                    ),
                            ),
                          ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Row(
                  children: [
                    Container(
                        width: 20.99.w,
                        height: 20.99.h,
                        child: Image.asset(
                          AppAssets.cameraslash,
                          fit: BoxFit.fill,
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      applocal.identity2,
                      style: MyTextStyles.sora(
                          fontsize: 16.sp, color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Row(
                  children: [
                    Container(
                        child: Image.asset(
                      AppAssets.shieldtick,
                    )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      applocal.identity3,
                      style: MyTextStyles.sora(
                          fontsize: 16.sp, color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.h),
                child: ButtonWidget(
                    color: AppColors.primary,
                    text: Text(
                      "Continue",
                      style: MyTextStyles.worknormal(
                          fontsize: 16.sp, color: AppColors.blackColor),
                    ),
                    onPressed: () {
                      Get.to(Cpasscode());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
