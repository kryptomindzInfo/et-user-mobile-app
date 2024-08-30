import 'package:et_bank/controllers/accountFlow/account_details_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greycontainer/classforwidget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/greycontainer/customlist.dart';
import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class Networth extends StatefulWidget {
  Networth({super.key});

  @override
  State<Networth> createState() => _NetworthState();
}

class _NetworthState extends State<Networth> {
  final ThemeController themeController = Get.put(ThemeController());

  AccountDetailsController accountDetailsController =
      Get.put(AccountDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
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
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Net worth",
                        style: MyTextStyles.sora5(
                          fontsize: 26.sp,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: Text(
                            "£0 Current value",
                            style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greenText,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.inActiveTabButtons1,
                              borderRadius: BorderRadius.circular(48.r)),
                          height: 43.h,
                          width: 349.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 43.h,
                                width: 175.w,
                                child: ButtonWidget(
                                    color: accountDetailsController
                                        .getLocalButtonColor(),
                                    text: Text(
                                      "Assets",
                                      style: TextStyle(
                                          color: accountDetailsController
                                              .getLocalButtonTextColor(),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Work Sans'),
                                    ),
                                    onPressed: () {
                                      accountDetailsController
                                          .setLocalValue(true);
                                    }),
                              ),
                              Container(
                                height: 43.h,
                                width: 173.w,
                                child: ButtonWidget(
                                    color: accountDetailsController
                                        .getSwiftButtonColor(),
                                    text: Text(
                                      "Liabilities",
                                      style: TextStyle(
                                          color: accountDetailsController
                                              .getSwiftButtonTextColor(),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    onPressed: () {
                                      accountDetailsController
                                          .setLocalValue(false);
                                    }),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            accountDetailsController.hasAssets.toggle();
                          },
                          child: Container(
                            width: 349.w,
                            height: 333.h,
                            decoration: BoxDecoration(
                              color: AppColors.greyBox,
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              child: accountDetailsController.hasAssets.value
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                          Text(
                                            "£27.9",
                                            style: MyTextStyles.sora5(
                                                fontsize: 32.sp,
                                                color: AppColors.primaryText),
                                          ),
                                          Text(
                                            "Total assets",
                                            style: MyTextStyles.workfont(
                                                fontsize: 14.sp,
                                                color: AppColors.greyText2,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              AppAssets.networthgraph,
                                              width: 224.w,
                                              height: 224.h,
                                            ),
                                          ),
                                        ])
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "£0",
                                          style: MyTextStyles.sora5(
                                              fontsize: 32.sp,
                                              color: AppColors.primaryText),
                                        ),
                                        Text(
                                          "Total assets",
                                          style: MyTextStyles.workfont(
                                              fontsize: 14.sp,
                                              color: AppColors.greyText2,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 50.h,
                                        ),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  AppAssets.noassets,
                                                  width: 119.w,
                                                  height: 121.5.h,
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "No assets yet",
                                                  style: MyTextStyles.sorafont(
                                                      fontsize: 16.sp,
                                                      color:
                                                          AppColors.primaryText,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  "Get started with cash, saving or investment",
                                                  style: MyTextStyles.workfont(
                                                      fontsize: 14.sp,
                                                      color:
                                                          AppColors.greyText2,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            )),
                                      ],
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        accountDetailsController.local == true
                            ? Container(
                                width: 349.w,
                                height: 526.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greyBox,
                                  borderRadius: BorderRadius.circular(28.r),
                                ),
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: dataList.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          CustomListItem(data: dataList[index]),
                                    );
                                  },
                                ),
                              )
                            : Container(
                                width: 349.w,
                                height: 78,
                                decoration: BoxDecoration(
                                  color: AppColors.greyBox,
                                  borderRadius: BorderRadius.circular(28.r),
                                ),
                                child: ListTile(
                                  leading: CircularIcons(
                                    color: AppColors.primaryButton,
                                    image: AppAssets.liabilites,
                                  ),

                                  //  Container(
                                  //   width: 43.w,
                                  //   height: 43.h,
                                  //   decoration: BoxDecoration(
                                  //     color: Color.fromRGBO(61, 254, 76, 0.29),
                                  //     borderRadius: BorderRadius.circular(28.r),
                                  //   ),
                                  //   child: Image.asset(
                                  //     AppAssets.liabilites,
                                  //   ),
                                  // ),
                                  title: Text(
                                    "Linked",
                                    style: MyTextStyles.worknormal(
                                        fontsize: 16.sp,
                                        color: AppColors.primaryText),
                                  ),
                                  subtitle: Text(
                                    "Linked external accounts",
                                    style: MyTextStyles.worknormal(
                                        fontsize: 12.sp,
                                        color: AppColors.greyText2),
                                  ),
                                  trailing: Container(
                                      width: 70.w,
                                      height: 39.h,
                                      decoration: BoxDecoration(
                                          color: AppColors.darkYellow,
                                          borderRadius:
                                              BorderRadius.circular(70.r)),
                                      child: Center(
                                          child: Text(
                                        "Link",
                                        style: MyTextStyles.sora(
                                            fontsize: 16.sp,
                                            color: AppColors.blackColor),
                                      ))),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
