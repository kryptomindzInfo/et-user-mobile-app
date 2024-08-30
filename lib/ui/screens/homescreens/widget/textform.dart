import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatefulWidget {
  SearchBarWidget(
      {this.suffixIcon,
      this.color,
      this.hintText,
      required Null Function(dynamic value) onChanged});

  Widget? suffixIcon;
  Color? color;
  String? hintText;

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
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: widget.hintText ?? "Home",
          contentPadding: EdgeInsets.only(bottom: 4.h),
          hintStyle: MyTextStyles.worknormal(
              fontsize: 16.sp, color: AppColors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: widget.color ?? AppColors.buttongrey,
          prefixIcon: Align(
            heightFactor: 1,
            widthFactor: 1,
            child: Image.asset(
              AppAssets.icon_search,
              width: 14.54.w,
              height: 14.54.h,
            ),
          ),
          suffixIcon: widget.suffixIcon,
        ),
      ),
    );
  }
}
