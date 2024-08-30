import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CameraOrGalleryWidget extends StatefulWidget {

  CameraOrGalleryWidget({super.key, this.image, this.text, this.onTap});

  String? image;
  String? text;
  void Function()? onTap;

  @override
  State<CameraOrGalleryWidget> createState() => _CameraOrGalleryWidgetState();
}

class _CameraOrGalleryWidgetState extends State<CameraOrGalleryWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.childDarkBlue,
            borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23, 21, 21, 20),
          child: Row(
            children: [
              Image.asset(
                widget.image ?? AppAssets.child_camera_1,
                height: 38.h,
                width: 38.w,
              ),
              SizedBox(
                width: 22.w,
              ),
              Text(
                widget.text ?? MyText.OpenCamera,
                style: TextStyle(
                    color: AppColors.white,
                    fontFamily: MyTextStyles.worksansFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
