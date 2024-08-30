import 'package:et_bank/controllers/stockcontroller/stockcountrycontroller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/ukinsurance.dart';
import 'package:et_bank/ui/screens/stock/widget/checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonalDetails extends StatefulWidget {
  PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final StockCountryController countryController =
      Get.put(StockCountryController());

  TextEditingController searchController = TextEditingController();

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      MyText.pd,
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                MyText.pd,
                style: MyTextStyles.sorafont(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w600,
                ),
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
                        height: 750.h,
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
                                  // Flexible(
                                  //   child: SearchBarWidget(
                                  //     hintText: "",
                                  //     onChanged: (value) {
                                  //       countryController.setSearchText(value);
                                  //     },
                                  //   ),
                                  // ),
                                  Container(
                                    width: 300.w,
                                    height: 38.h,
                                    child: TextFormField(
                                      controller: searchController,
                                      onChanged: (value) {
                                        countryController.setSearchText(value);
                                      },
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
                                child: Obx(() {
                                  final filteredList =
                                      countryController.filteredCountries;
                                  return Container(
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
                                        itemCount: filteredList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          final country = filteredList[index];
                                          return GestureDetector(
                                            onTap: () {
                                              countryController
                                                  .selectCountry(country);
                                              Get.back();
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.w,
                                                      top: 20.h,
                                                      right: 20.w),
                                                  child: ListTile(
                                                    leading: Image.asset(
                                                      // allCountries2[index].flag,
                                                      country.flag,
                                                      width: 42.w,
                                                      height: 42.h,
                                                    ),
                                                    title: Text(
                                                      // allCountries2[index].name,
                                                      country.name,
                                                      style: TextStyle(
                                                          color:
                                                              AppColors.primaryText,
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'WorkSans'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  );
                                }),
                              )
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
                        children: [
                          Column(
                            children: [
                              countryController
                                      .selectedCountry.value.name.isEmpty
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 10.h),
                                      child: Text(
                                        "Nationality",
                                        style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16.sp,
                                          fontFamily: "work sans",
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nationality",
                                          style: TextStyle(
                                            color: AppColors.greyText2,
                                            fontSize: 12.sp,
                                            fontFamily: "work sans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          countryController
                                              .selectedCountry.value.name,
                                          style: TextStyle(
                                            color: AppColors
                                                .blackColor, // Example color
                                            fontSize:
                                                16.sp, // Example font size

                                            fontFamily: "work sans",
                                            fontWeight: FontWeight
                                                .w400, // Example font weight
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            AppAssets.icon_arrow_down,
                            width: 22.w,
                            height: 11.h,
                            color: AppColors.inActiveTabButtons1,
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
                        height:750.h,
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
                                      controller: searchController,
                                      onChanged: (value) {
                                        countryController.setSearchText(value);
                                      },
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
                                          ),
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
                                child: Obx(() {
                                  final filteredList =
                                      countryController.filteredCountries;
                                  return Container(
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
                                        itemCount: filteredList.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          final country = filteredList[index];
                                          return GestureDetector(
                                            onTap: () {
                                              countryController
                                                  .selectCountry2(country);
                                              Get.back();
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.w,
                                                      top: 20.h,
                                                      right: 20.w),
                                                  child: ListTile(
                                                    leading: Image.asset(
                                                      // allCountries2[index].flag,
                                                      country.flag,
                                                      width: 42.w,
                                                      height: 42.h,
                                                    ),
                                                    title: Text(
                                                      // allCountries2[index].name,
                                                      country.name,
                                                      style: TextStyle(
                                                          color:
                                                              AppColors.primaryText,
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily:
                                                              'WorkSans'),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),
                                  );
                                }),
                              )
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
                        children: [
                          Column(
                            children: [
                              countryController
                                      .selectedCountry2.value.name.isEmpty
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 0.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            MyText.sn,
                                            style: TextStyle(
                                              color: AppColors.greyText2,
                                              fontSize: 16.sp,
                                              fontFamily: "work sans",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "None",
                                            style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: 16.sp,
                                              fontFamily: "work sans",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          MyText.sn,
                                          style: TextStyle(
                                            color: AppColors.greyText2,
                                            fontSize: 16.sp,
                                            fontFamily: "work sans",
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          countryController
                                              .selectedCountry2.value.name,
                                          style: TextStyle(
                                            color:
                                                Colors.black, // Example color
                                            fontSize:
                                                16.sp, // Example font size

                                            fontFamily: "work sans",
                                            fontWeight: FontWeight
                                                .w400, // Example font weight
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            AppAssets.icon_arrow_down,
                            width: 22.w,
                            height: 11.h,
                            color: AppColors.inActiveTabButtons1,
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
              StockCheckedWidget(
                text: MyText.notaperson,
                imagePath: AppAssets.iIcon,
              ),
              SizedBox(
                height: 20.h,
              ),
              StockCheckedWidget(
                text: MyText.nonprofe,
                imagePath: AppAssets.iIcon,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, top: 300.h),
                child: GetX<StockCountryController>(builder: (context) {
                  bool isFormValid =
                      countryController.selectedCountry.value.name.isNotEmpty;
                  return Container(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                        color: isFormValid
                            ? AppColors.primaryButton
                            : AppColors.disableButton,
                        text: Text(
                          "Continue",
                          style: TextStyle(
                              color: isFormValid
                                  ? AppColors.btnText
                                  : AppColors.disableBtnText,
                              fontFamily: 'WorkSans',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          isFormValid
                              ? Get.to(
                                  Uknational(),
                                )
                              : null;
                        }),
                  );
                }),
              )
            ],
          )),
    ));
  }
}
