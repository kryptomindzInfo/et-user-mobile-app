import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/screens/homescreens/widget/userdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';

class greencontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
  
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: AppColors.greenBox,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 8.h),
        child: CustomUserDetails(
          items: [
            {'text': 'Add Money', 'image': AppAssets.add},
            {'text': 'Exchange', 'image': AppAssets.exchange},
            {'text': 'More', 'image': AppAssets.menu},
          ],
        ),
      ),
    );
  }
}
