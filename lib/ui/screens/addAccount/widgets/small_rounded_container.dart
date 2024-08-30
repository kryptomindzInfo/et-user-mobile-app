import 'package:et_bank/global/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SmallRoundedContainerWidget extends StatefulWidget {

  SmallRoundedContainerWidget({
    super.key,
    this.color,
  });

  Color? color;

  @override
  State<SmallRoundedContainerWidget> createState() => _SmallRoundedContainerWidgetState();
}

class _SmallRoundedContainerWidgetState extends State<SmallRoundedContainerWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: widget.color ?? AppColors.primaryText,
            borderRadius: BorderRadius.circular(20)),
        height: 6.h,
        width: 49.w,
      ),
    );
  }
}
