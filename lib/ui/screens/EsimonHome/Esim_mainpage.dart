import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/EsimonHome/esim_onhome_checkout.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class Esimmainpage extends StatefulWidget {
  Esimmainpage({super.key});

  @override
  State<Esimmainpage> createState() => _EsimmainpageState();
}

class _EsimmainpageState extends State<Esimmainpage> {
  final ThemeController themeController = Get.put(ThemeController());

  final List<Map<String, String>> data = [
    {
      'title': '10GB -7Days',
      'subtitle': 'Today',
      'image': AppAssets.ukesim,
    },
    {
      'title': '5GB -1 Month',
      'subtitle': '10 days ago',
      'image': AppAssets.aus,
    },
    // Add more items as needed
  ];

  final List<Map<String, String>> History = [
    {
      'title': '10GB -7Days',
      'subtitle': '15 Days ago',
      'image': AppAssets.ukesim,
    },
    {
      'title': '5GB -1 Month',
      'subtitle': '01 month ago',
      'image': AppAssets.india
    },
    {
      'title': '5GB -1 Month',
      'subtitle': '02 month ago',
      'image': AppAssets.brazil,
    },
    {
      'title': '5GB -1 Month',
      'subtitle': '04 month ago',
      'image': AppAssets.canada,
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(Profile());
                },
                child: Image.asset(
                  AppAssets.appbar1,
                  width: 34.w,
                  height: 34.h,
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              "E-sim",
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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(
                    hintText: "Home",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Activated E-sims",
                    style: MyTextStyles.sorafont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    width: 349.w,
                    height: 155.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      color: AppColors.greyBox,
                    ),
                    child: Container(
                      height: 155,
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              data[index]['title']!,
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(data[index]['subtitle']!,
                                style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400)),
                            leading: Image.asset(
                              data[index]['image']!,
                              width: 43.w,
                              height: 43.h,
                            ),
                            trailing: Container(
                              width: 106.w,
                              height: 39.h,
                              decoration: BoxDecoration(
                                color: AppColors.disableButton,
                                borderRadius: BorderRadius.circular(70.r),
                              ),
                              child: Center(
                                  child: Text(
                                "Activated",
                                style: MyTextStyles.sorafont(
                                    fontsize: 16.sp,
                                    color: AppColors.disableBtnText,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Activated E-sims History",
                    style: MyTextStyles.sorafont(
                      fontsize: 16.sp,
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    width: 349.w,
                    height: 310.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      color: AppColors.greyBox,
                    ),
                    child: Container(
                      height: 310.h,
                      child: ListView.builder(
                        itemCount: History.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              History[index]['title']!,
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(History[index]['subtitle']!,
                                style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400)),
                            leading: Image.asset(
                              History[index]['image']!,
                              width: 43.w,
                              height: 43.h,
                            ),
                            trailing: InkWell(
                              onTap: () {
                                Get.to(EsimOnHomeCheckOut());
                              },
                              child: Container(
                                width: 106.w,
                                height: 39.h,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryButton,
                                  borderRadius: BorderRadius.circular(70.r),
                                ),
                                child: Center(
                                    child: Text(
                                  "Activate",
                                  style: MyTextStyles.sorafont(
                                      fontsize: 16.sp,
                                      color: AppColors.btnText,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
