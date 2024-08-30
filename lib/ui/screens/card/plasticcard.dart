import 'package:carousel_slider/carousel_slider.dart';
import 'package:et_bank/controllers/Cardcontroller/cards.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Plasticcard extends StatelessWidget {
  final PlasticCardController controller = Get.put(PlasticCardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Text(
                      MyText.getadd,
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 405.53.h,
                      onPageChanged: (index, reason) {
                        controller.onIndexChanged(index);
                      },
                    ),
                    items: controller.cardData.map((cardItem) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Image.asset(
                                cardItem['image'],
                                width: 377.w,
                                height: 405.53.h,
                              ),
                            ],
                          ),
                        );
                      });
                    }).toList(),
                  ),
                  SizedBox(height: 20.h),
                  Obx(() {
                    return Column(
                      children: [
                        Text(
                          controller.cardData[controller.currentIndex.value]
                              ['title'],
                          style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          controller.cardData[controller.currentIndex.value]
                              ['description'],
                          textAlign: TextAlign.center,
                          style: MyTextStyles.workfont(
                            fontsize: 14.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Container(
                          width: 50.w,
                          height: 50.h,
                          child: Image.asset(
                            controller.cardData[controller.currentIndex.value]
                                ['image2'],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          controller.cardData[controller.currentIndex.value]
                              ['fee'],
                          style: MyTextStyles.workfont(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        btn(
                          cardText:
                              controller.cardData[controller.currentIndex.value]
                                  ['buttonText'],
                          cardWidth: 318.w,
                          cardHeight: 48.h,
                        )
                      ],
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
