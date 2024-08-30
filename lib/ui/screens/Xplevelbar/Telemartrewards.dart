import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Xplevelbar/telemartonline_gift.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Telemardrewards extends StatefulWidget {
  Telemardrewards({super.key});

  @override
  State<Telemardrewards> createState() => _TelemardrewardsState();
}

class _TelemardrewardsState extends State<Telemardrewards> {
  final ThemeController themeController = Get.put(ThemeController());

  final ListController controller = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                AppAssets.leftarrow,
                width: 25.12.w,
                height: 17.94.h,
                color: AppColors.primaryText,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Rewards",
            style: MyTextStyles.sora5(
              fontsize: 16.sp,
              color: AppColors.primaryText,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Image.asset(
                AppAssets.notifi,
                width: 19.44.w,
                height: 25.27.h,
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWidget(),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 349.w,
                  height: 684.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(Telemartonlinegift());
                          },
                          child: Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Container(
                              width: 335.w,
                              height: 121.h,
                              decoration: BoxDecoration(
                                color: AppColors.blackBox2,
                                borderRadius: BorderRadius.circular(28.r),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 14.w),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppAssets.telemart,
                                            width: 30.w,
                                            height: 30.h,
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                MyText.telemartonl,
                                                style: MyTextStyles.workfont(
                                                    fontsize: 16.sp,
                                                    color: AppColors.primaryText,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              Text(
                                                MyText.onefiftyof,
                                                style: MyTextStyles.workfont(
                                                    fontsize: 12.sp,
                                                    color: AppColors.greyText2,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 5.h, top: 10.h, right: 10.w),
                                      child: Container(
                                        width: 210.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                        ),
                                        child: LinearProgressIndicator(
                                          value: 0.06,
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                          backgroundColor: AppColors.greyText2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            AppColors.greenText,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    btn(
                                      cardText: MyText.redeem,
                                      cardWidth: 303.w,
                                      cardHeight: 34.h,
                                      color: AppColors.btnText,
                                    )
                                  ]),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
