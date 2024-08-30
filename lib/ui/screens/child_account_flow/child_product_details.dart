import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChildProductDetails extends StatefulWidget {
  ChildProductDetails({
    this.image,
    this.title,
    super.key,
  });

  String? image;
  String? title;

  @override
  State<ChildProductDetails> createState() => _ChildProductDetailsState();
}

class _ChildProductDetailsState extends State<ChildProductDetails> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.childBlue,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                  ),
                  height: 209.h,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(19, 20, 19, 14),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 54),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  widget.image ?? AppAssets.shoes_details,
                                  fit: BoxFit.cover,
                                  width: 348.w,
                                  height: 117.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 20.h,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              AppAssets.child_back,
                              width: 50.w,
                              height: 50.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    // height: 530.h,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 32.h,
                          ),
                          Center(
                            child: Text(
                              widget.title ?? MyText.NikeShoes,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: MyTextStyles.soraFamily),
                            ),
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.w, right: 25.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.Description,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: MyTextStyles.soraFamily),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  MyText.loremipsum,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  MyText.About,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: MyTextStyles.soraFamily),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  MyText.loremipsum,
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 230,
          color: AppColors.childBlue,
          elevation: 0,
          child: Container(
            width: 351.w,
            height: 180.h,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.NikeShoes,
                          style: TextStyle(
                              color: themeController.bgColor.value,
                              fontFamily: MyTextStyles.soraFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '£ 52',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.halfBlack,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ends on 13-Jun-2023 11:00',
                          style: TextStyle(
                              color: AppColors.halfBlack,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '£ 39',
                          style: TextStyle(
                              color: AppColors.childDarkBlue,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    color: themeController.bgColor.value,
                    width: 309.h,
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.DeliveryCharges,
                          style: TextStyle(
                              color: AppColors.halfBlack,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '£ 0',
                          style: TextStyle(
                              color: AppColors.halfBlack,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          MyText.TotalPrice,
                          style: TextStyle(
                              color: themeController.bgColor.value,
                              fontFamily: MyTextStyles.soraFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '£ 39',
                          style: TextStyle(
                              color: AppColors.childDarkBlue,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: 327.w,
                    height: 48.h,
                    child: ButtonWidget(
                        color: AppColors.primary,
                        text: Text(
                          MyText.Getthisoffernow,
                          style: TextStyle(
                              color: themeController.bgColor.value,
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
