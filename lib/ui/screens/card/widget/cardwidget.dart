import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/getaddcard.dart';
import 'package:et_bank/ui/screens/card/widget/Customrow.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/order_cards/order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get_core/src/get_main.dart';

class Cardwidget extends StatefulWidget {
  const Cardwidget({super.key});

  @override
  State<Cardwidget> createState() => _CardwidgetState();
}

class _CardwidgetState extends State<Cardwidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                // height: 243.h,
                width: 349.w,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              MyText.single,
                              style: MyTextStyles.workfont(
                                  fontsize: 14.sp,
                                  color: AppColors.greyText2,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                                width: 12.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.greyText2,
                                    width: 1.w,
                                  ),
                                ),
                                child: Image.asset(
                                  AppAssets.iIcon,
                                  width: 2.w,
                                  height: 8.h,
                                  color: AppColors.greyText2,
                                )),
                            Spacer(),
                            Container(
                                width: 50.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: AppColors.blackBox2,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Image.asset(AppAssets.group92))
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(ordercard());
                          },
                          child: CustomInfoRow(
                            imagePath: AppAssets.cardimage,
                            title: MyText.disp,
                            subtitle: MyText.safe,
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          MyText.phys,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomInfoRow(
                            imagePath: AppAssets.group93,
                            title: MyText.Standard,
                            customColor: AppColors.red,
                            subtitle: MyText.order)
                      ]),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 349.w,
                height: 318.h,
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(30.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.newcard,
                                style: MyTextStyles.worknormal(
                                  fontsize: 24.sp,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                MyText.provides,
                                style: MyTextStyles.workfont(
                                    fontsize: 12.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                  width: 300.w,
                                  height: 99.327.h,
                                  child: Image.asset(
                                    AppAssets.combinecard,
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.cover,
                                  ))
                            ]),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(getaddcard());
                        },
                        child: btn(
                            cardText: MyText.getcard,
                            cardWidth: 318.w,
                            cardHeight: 48.h),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
