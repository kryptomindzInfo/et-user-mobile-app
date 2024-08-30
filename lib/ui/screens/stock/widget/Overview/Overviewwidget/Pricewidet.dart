import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/tslaalert.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Pricewidget extends StatefulWidget {
  const Pricewidget({super.key});

  @override
  State<Pricewidget> createState() => _PricewidgetState();
}

class _PricewidgetState extends State<Pricewidget> {
  @override
  Widget build(BuildContext context) {
    return    Container(
          width: 351.w,
          height: 96.w,
          decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(children: [
              Container(
                width: 43.w,
                height: 43.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.rgbGREEN,
                ),
                child: Center(child: Image.asset(AppAssets.notifi,color: AppColors.greenText,width: 19.44.w,height: 25.01.h,)),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                MyText.teslapricealert,
                style: MyTextStyles.workfont(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  Get.to(Tslaalert());
                },
                child: Container(
                    width: 81.w,
                    height: 39.h,
                    decoration: BoxDecoration(
                        color: AppColors.yellowButton,
                        borderRadius: BorderRadius.circular(70.r)),
                    child: Center(
                        child: Text(
                      "+ Add",
                      style: MyTextStyles.sora(
                          fontsize: 16.sp, color: AppColors.blackText),
                    ))),
              ),
            ]),
          ),
        );
  }
}