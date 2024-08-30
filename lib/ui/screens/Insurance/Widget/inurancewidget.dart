import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Insurance/deviceinsurance.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/Insurance/petinsurance.dart';
import 'package:et_bank/ui/screens/Insurance/travelinsurance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Insurancewidget extends StatelessWidget {
  Insurancewidget({super.key});
  final Listitems = [
    (
      text: MyText.petins,
      text2:  MyText.fordogs,    
      imageUrl: AppAssets.petinsurance,
    ),
    (
      text: MyText.trains,
      text2: MyText.fullfillyour,
      imageUrl: AppAssets.travelinsurance,
    ),
    (
      text:MyText.deviceins,
      text2: MyText.Feelpro,
      imageUrl: AppAssets.deviceinsurance
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Listitems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => petinsurance()),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => travelinsurance()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => deviceinsurance()),
                      );
                      break;
                    default:
                  }
                },
                child: Container(
                  height: 189.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  width: 156.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        Listitems[index].imageUrl,
                        width: 75.w,
                        height: 75.h,
                        color: AppColors.primaryText,
                      )),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 10.h),
                        child: Text(
                          Listitems[index].text,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          Listitems[index].text2,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText1,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
