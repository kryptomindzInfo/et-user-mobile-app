import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SquareContainers extends StatefulWidget {
  const SquareContainers({super.key});

  @override
  State<SquareContainers> createState() => _SquareContainersState();
}

class _SquareContainersState extends State<SquareContainers> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(20)),
              height: 166.h,
              width: 166.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(20)),
              height: 166.h,
              width: 166.w,
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(20)),
              height: 166.h,
              width: 166.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(20)),
              height: 166.h,
              width: 166.w,
            ),
          ],
        ),
      ],
    );
  }
}
