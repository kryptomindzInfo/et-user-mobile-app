import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Gift%20flow/Deliveroo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class giftwidget extends StatelessWidget {
  giftwidget({super.key});
  final Listitems = [
    (
      text1: MyText.deliveroo,
      text2: MyText.ngc,
    ),
    (
      text1: MyText.GAP,
      text2: MyText.hmdig,
    ),
   
    (
      text1: MyText.justeat,
      text2: MyText.ubc,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 530.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: Listitems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: Row(children: [
              Container(
                width: 167.w,
                height: 164.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.r),
                  color: AppColors.buttongrey,
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(Deliveroo());
                          },
                          child: Container(
                            height: 110.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(21.r),
                                topRight: Radius.circular(21.r),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 21.h,
                          color: AppColors.buttongrey,
                        ),
                      ],
                    ),
                    Positioned(
                        left: 15.w,
                        bottom: 20.h,
                        child: Text(
                          Listitems[index].text1,
                          style: MyTextStyles.sorafont(
                              fontsize: 14.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Container(
                width: 167.w,
                height: 164.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.r),
                  color: AppColors.buttongrey,
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 110.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.yellow,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(21.r),
                                topRight: Radius.circular(21.r),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 21.h,
                          color: AppColors.buttongrey,
                        ),
                      ],
                    ),
                    Positioned(
                       left: 15.w,
                        bottom: 20.h,
                        child: Text(
                          Listitems[index].text2,
                          style: MyTextStyles.sorafont(
                              fontsize: 14.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
