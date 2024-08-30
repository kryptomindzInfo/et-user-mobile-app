import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/Annualincome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Occupation extends StatefulWidget {
  Occupation({super.key});

  @override
  State<Occupation> createState() => _OccupationState();
}

class _OccupationState extends State<Occupation> {
  final ThemeController themeController = Get.put(ThemeController());

  List alloccupation = [
    "Accountant/CPA/Bookkeeper/Controller",
    "Actuary",
    "Adjuster",
    "Administrator",
    "Advertiser/Marketer/PR Professionals",
    "Architecture",
    "Accountant/CPA/Bookkeeper/Controller",
    "Actuary",
    "Adjuster",
    "Administrator",
    "Advertiser/Marketer/PR Professionals",
    "Architecture",
  ];

  List allindustry = [
    "Arts, Entertainment, and Recreation",
    "Accommodation and food services",
    "Construction",
    "Agriculture, forestry and fishong",
    "Education",
    "Business and Administration",
    "Arts, Entertainment, and Recreation",
    "Accommodation and food services",
    "Construction",
    "Agriculture, forestry and fishong",
    "Education",
    "Business and Administration",
  ];

  final selectedOccupation = ''.obs;

  final selectedindustry = ''.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
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
                      )),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Occupation",
                    style: MyTextStyles.sora5(
                        fontsize: 26.sp, color: AppColors.primaryText,),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: 390.w,
                      height: 790,
                      decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 300.w,
                                  height: 38.h,
                                  child: TextFormField(
                                    onChanged: (value) {},
                                    style: TextStyle(color: AppColors.primaryText),
                                    decoration: InputDecoration(
                                      hintText: "",
                                      contentPadding:
                                          EdgeInsets.only(bottom: 4.h),
                                      hintStyle: MyTextStyles.worknormal(
                                          fontsize: 16.sp,
                                          color: AppColors.primaryText),

                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.r),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.PrimaryTextField, // Replace with your color

                                      prefixIcon: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          AppAssets.icon_search,
                                          width: 14.54.w,
                                          height: 14.54.h,
                                        ), // Replace with your search icon
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "cancel",
                                      style: MyTextStyles.workfont(
                                          fontsize: 14.sp,
                                          color: AppColors.greenText,
                                          fontWeight: FontWeight.w400),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.greyBox,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r),
                                ),
                              ),
                              width: 348.w,
                              height: 769.h,
                              child: ListView.builder(
                                  itemCount: alloccupation.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final Occupation = alloccupation[index];
                                    return GestureDetector(
                                      onTap: () {
                                        selectedOccupation.value = Occupation;

                                        Get.back();
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w,
                                                top: 30.h,
                                                right: 20.w,
                                                bottom: 20.h),
                                            child: Text(
                                              Occupation,
                                              style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'WorkSans'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Obx(() {
                return Container(
                  width: 351.w,
                  height: 61.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.rgblwhite,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (selectedOccupation.value.isNotEmpty)
                                Text(
                                  "Occupation",
                                  style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              selectedOccupation.value.isEmpty
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(
                                        "Occupation",
                                        style: TextStyle(
                                          color: AppColors.greyText2, // Example color
                                          fontSize: 16.sp, // Example font size

                                          fontFamily: "work sans",
                                          fontWeight: FontWeight
                                              .w400, // Example font weight
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  : Text(
                                      selectedOccupation.value,
                                      style: TextStyle(
                                        color: AppColors.blackColor, // Example color
                                        fontSize: 16.sp, // Example font size

                                        fontFamily: "work sans",
                                        fontWeight: FontWeight
                                            .w400, // Example font weight
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            ],
                          ),
                        ),
                        Image.asset(
                          AppAssets.icon_arrow_down,
                          color: themeController.bgColor.value,
                          width: 17.w,
                          height: 8.h,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: 390.w,
                      height: 790,
                      decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 300.w,
                                  height: 38.h,
                                  child: TextFormField(
                                    onChanged: (value) {},
                                    style: TextStyle(color: AppColors.primaryText),
                                    decoration: InputDecoration(
                                      hintText: "",
                                      contentPadding:
                                          EdgeInsets.only(bottom: 4.h),
                                      hintStyle: MyTextStyles.worknormal(
                                          fontsize: 16.sp,
                                          color: AppColors.primaryText),

                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.r),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: AppColors.PrimaryTextField, // Replace with your color

                                      prefixIcon: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          AppAssets.icon_search,
                                          width: 14.54.w,
                                          height: 14.54.h,
                                        ), // Replace with your search icon
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "cancel",
                                      style: MyTextStyles.workfont(
                                          fontsize: 14.sp,
                                          color: AppColors.greenText,
                                          fontWeight: FontWeight.w400),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.greyBox,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.r),
                                  topRight: Radius.circular(30.r),
                                ),
                              ),
                              width: 348.w,
                              height: 769.h,
                              child: ListView.builder(
                                  itemCount: allindustry.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    final industry = allindustry[index];
                                    return GestureDetector(
                                      onTap: () {
                                        selectedindustry.value = industry;

                                        Get.back();
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w,
                                                top: 30.h,
                                                right: 20.w,
                                                bottom: 20.h),
                                            child: Text(
                                              industry,
                                              style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'WorkSans'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Obx(() {
                return Container(
                  width: 351.w,
                  height: 61.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColors.greyBox,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (selectedindustry.value.isNotEmpty)
                                Text(
                                  "Industry",
                                  style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              selectedindustry.value.isEmpty
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(
                                        "Industry",
                                        style: TextStyle(
                                          color: AppColors.greyText2, // Example color
                                          fontSize: 16.sp, // Example font size

                                          fontFamily: "work sans",
                                          fontWeight: FontWeight
                                              .w400, // Example font weight
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  : Text(
                                      selectedindustry.value,
                                      style: TextStyle(
                                        color: AppColors.blackColor, // Example color
                                        fontSize: 16.sp, // Example font size

                                        fontFamily: "work sans",
                                        fontWeight: FontWeight
                                            .w400, // Example font weight
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            ],
                          ),
                        ),
                        Image.asset(
                          AppAssets.icon_arrow_down,
                          width: 17.w,
                          height: 8.h,
                          color: themeController.bgColor.value,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 480.h),
              child: Obx(() {
                final occupationSelected = selectedOccupation.value.isNotEmpty;
                final industrySelected = selectedindustry.value.isNotEmpty;
                return Container(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: occupationSelected && industrySelected
                          ? AppColors.primaryButton
                          : AppColors.disableButton,
                      text: Text(
                        "Continue",
                        style: TextStyle(
                            color: occupationSelected && industrySelected
                                ? AppColors.btnText
                                : AppColors.disableBtnText,
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Get.to(Annualincome());
                      }),
                );
              }),
            )
          ],
        ),
      ),
    ));
  }
}
