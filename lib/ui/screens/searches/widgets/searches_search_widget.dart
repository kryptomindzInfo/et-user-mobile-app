import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({this.onchanged, this.controller});

  TextEditingController? controller;

  void Function(String)? onchanged;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 278.w,
      height: 35.h,
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onchanged,
        style: TextStyle(color: AppColors.primaryText),
        decoration: InputDecoration(
          hintText: "Search “TFL, Starbucks,...",
          contentPadding: EdgeInsets.only(bottom: 2.h),
          hintStyle: TextStyle(
              color: AppColors.greyText2,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: MyTextStyles.worksansFamily),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.greyBox,
          prefixIcon: InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.icon_search,
              width: 14.54.w,
              height: 14.54.h,
              color: AppColors.primaryText,
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Image.asset(
              AppAssets.icon_close,
              width: 14.54.w,
              height: 14.54.h,
              color: AppColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}
