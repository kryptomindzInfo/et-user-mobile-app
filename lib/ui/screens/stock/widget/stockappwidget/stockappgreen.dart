import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';

import 'package:et_bank/ui/screens/stock/widget/stockappwidget/stockappgreenmaterial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class stockgreencontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 307.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.r),
        color: AppColors.primary,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 8.h),
        child: stockappCustomDetails(
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
