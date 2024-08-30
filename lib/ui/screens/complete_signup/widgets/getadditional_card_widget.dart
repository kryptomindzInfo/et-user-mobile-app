import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GetAdditionalCardWidget extends StatefulWidget {
  VoidCallback? onpressed;
  String? title;

  GetAdditionalCardWidget({super.key, this.onpressed, this.title});

  @override
  State<GetAdditionalCardWidget> createState() => _GetAdditionalCardWidgetState();
}

class _GetAdditionalCardWidgetState extends State<GetAdditionalCardWidget> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.h,
      width: 350.w,
      child: Card(
        color: AppColors.greenBox2,
        shape: RoundedRectangleBorder(
          side: BorderSide(),
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppAssets.getCard,
                  height: 42.h,
                  width: 42.w,
                  
                ),
                SizedBox(
                  height: 29.h,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        widget.title!,
                        style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Sora'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  MyText.compSignupGetAdditionalCardssubTitle,
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'WordSans'),
                ),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  height: 48.h,
                  width: 318.w,
                  child: ButtonWidget(
                      color: AppColors.whiteButton2,
                      text: Text(
                        MyText.compSignupGetAdditionalCardsGetCard,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'WorkSans'),
                      ),
                      onPressed: widget.onpressed),
                ),
                SizedBox(
                  height: 8.h,
                ),
              ],
            )),
      ),
    );
  }
}
