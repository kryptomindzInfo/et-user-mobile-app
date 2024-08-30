import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transaction extends StatefulWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String cost;
  final String costType;
  Color? titleColor;
  Color? subtitleColor;
  Color? costColor;
  Color? costTypeColor;
  double? width;
  double? height;

  Transaction({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.cost,
    required this.costType,
    this.titleColor,
    this.subtitleColor,
    this.costColor,
    this.costTypeColor,
    this.width,
    this.height,
  });

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          widget.imageAsset,
          width: widget.width ?? 30.w,
          height: widget.height ?? 30.h,
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: MyTextStyles.worknormal(
                  fontsize: 16.sp, color: widget.titleColor ?? AppColors.blackColor),
            ),
            Text(
              widget.subtitle,
              style: MyTextStyles.worknormal(
                fontsize: 12.sp,
                color: widget.subtitleColor ?? AppColors.rgblack,
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox(width: 100.w)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.cost,
              style: MyTextStyles.worknormal(
                fontsize: 16.sp,
                color: widget.costColor ?? AppColors.blackColor,
              ),
            ),
            Text(
              widget.costType,
              style: MyTextStyles.worknormal(
                fontsize: 12.sp,
                color: widget.costTypeColor ?? AppColors.rgblack,
              ),
            ),
          ],
        )
      ],
    );
  }
}
