import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'classfortopmover.dart';

class Topmover extends StatelessWidget {
  Topmover({super.key});
  final List<ListItem> items = [
    ListItem(
      imageUrl: AppAssets.CDLX,
      title: "CDLX",
      icon: AppAssets.polygonb,
      description: '24.63%',
      desColor: AppColors.coinup,
    ),
    ListItem(
      imageUrl: AppAssets.ASND,
      title: "ASND",
      icon: AppAssets.polygonp,
      description: '22.63%',
      desColor: AppColors.rgblpink,
    ),
    ListItem(
      imageUrl: AppAssets.NIKE,
      title: "NIKE",
      icon: AppAssets.polygonp,
      description: '21.63%',
      desColor: AppColors.coinup,
    ),
    ListItem(
      imageUrl: AppAssets.AAPL,
      title: "AAPL",
      icon: AppAssets.polygonb,
      description: '20.63%',
      desColor: AppColors.rgblpink,
    ),
  ];
  Widget _buildListItem(ListItem item) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Image.asset(
                item.imageUrl,
                width: 52.57.w,
                height: 52.57.h,
              ),
              SizedBox(
                height: 10.w,
              ),
              Text(
                item.title,
                style: MyTextStyles.workfont(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  Image.asset(
                    item.icon,
                  ),
                  SizedBox(width: 5),
                  Text(
                    item.description,
                    style: MyTextStyles.sorafont(
                        fontsize: 12.sp,
                        color: item.desColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 271.h,
      width: 349.w,
      decoration: BoxDecoration(
        color: AppColors.blackBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return _buildListItem(items[index]);
                  },
                  shrinkWrap: true,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return _buildListItem(items[index]);
                  },
                  shrinkWrap: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
