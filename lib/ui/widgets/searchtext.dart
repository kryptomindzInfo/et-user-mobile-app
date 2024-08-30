import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget({this.onChanged, this.hintText});
  String? hintText = "Home";
  void Function(String)? onChanged;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 35.h,
      child: TextFormField(
        onChanged: widget.onChanged,
        style: TextStyle(
          color: AppColors.primaryText,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: EdgeInsets.only(bottom: 2.h),
          hintStyle: MyTextStyles.worknormal(
            fontsize: 16.sp,
            color: AppColors.lightGreyText,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.PrimaryTextField, // Replace with your color

          prefixIcon: Align(
            heightFactor: 1,
            widthFactor: 1,
            child: Image.asset(
              AppAssets.icon_search,
              width: 14.54.w,
              height: 14.54.h,
              color: AppColors.lightGreyText,
            ), // Replace with your search icon
          ),
        ),
      ),
    );
  }
}
