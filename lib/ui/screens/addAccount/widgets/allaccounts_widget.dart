import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllAccountWidget extends StatefulWidget {
  String image;

  AllAccountWidget({super.key, required this.image});

  @override
  State<AllAccountWidget> createState() => _AllAccountWidgetState();
}

class _AllAccountWidgetState extends State<AllAccountWidget> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.greyBox, borderRadius: BorderRadius.circular(20)),
        height: 80.h,
        width: 350.w,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    widget.image,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
              Text(
                MyText.allAccounts,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'WorkSans'),
              ),
              Expanded(
                child: SizedBox(
                  width: 123.w,
                ),
              ),
              Text(
                MyText.amount,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
