import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greycontainer/classforwidget.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListItem extends StatelessWidget {
  final DataItem data;

  CustomListItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: -10.w),
        leading: Image.asset(data.leading,width: 43.w,height: 43.h,),
        title: Text(data.title,style: MyTextStyles.worknormal(fontsize: 16.sp, color: AppColors.primaryText),),
        subtitle: Text(data.subtitle, style: MyTextStyles.worknormal(fontsize: 12.sp, color: AppColors.greyText2), ),
        trailing: Container(
          width: 70.w,
          height: 39.h,
          decoration: BoxDecoration(
            color: AppColors.darkYellow,
            borderRadius: BorderRadius.circular(70.r)
          ),
          child: Center(child: Text(data.trailing,style: MyTextStyles.sora(fontsize: 16.sp, color: AppColors.blackColor),))),
      ),
    );
  }
}