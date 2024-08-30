import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Net%20worth/networth.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greycontainer/classforwidget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greycontainer/customlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:et_bank/global/constants/colors.dart';

class greycontainer extends StatelessWidget {
 

 greycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      height: 577.h,
      decoration: BoxDecoration(
        color: AppColors.buttongrey, // You need to define 'AppColors.buttongrey'.
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 25.h,
          
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MyText.wealth, // You need to define 'MyText.wealth'.
              style: MyTextStyles.sora(
                fontsize: 16.sp,
                color: AppColors.white, // You need to define 'AppColors.white'.
              ),
            ),
            InkWell(
              onTap:(){
                Get.to(Networth());
              },
              child: Text(
                MyText.price1, // You need to define 'MyText.price1'.
                style: MyTextStyles.sora5(fontsize: 48.sp, color: AppColors.primary),
              ),
            ),
            Container(
              height: 455.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return CustomListItem(data: dataList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

