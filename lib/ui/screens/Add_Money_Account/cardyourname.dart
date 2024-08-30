import 'package:et_bank/controllers/addmoney/addmoney_cardname_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/britishpound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class Cardyourname extends StatefulWidget {
  Cardyourname({super.key});

  @override
  State<Cardyourname> createState() => _CardyournameState();
}

class _CardyournameState extends State<Cardyourname> {
  final ThemeController themeController = Get.put(ThemeController());

  final CardFieldsController _cardFieldsController =
      Get.put(CardFieldsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppAssets.exit,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    MyText.cardname,
                    style: MyTextStyles.sora5(
                      fontsize: 32.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.icon_security,
                        width: 16.w,
                        height: 17.94.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        MyText.processsecurely,
                        style: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
                      child: Container(
                        width: 350.w,
                        height: 61.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 5.h,
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    MyText.cardnumber,
                                    style: MyTextStyles.workfont(
                                      fontsize: 16.sp,
                                      color: AppColors.greyText2,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppAssets.moneycard,
                                        width: 23.45.w,
                                        height: 16.13.h,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2.h),
                                        child: Container(
                                          width: 220.w,
                                          height: 20.h,
                                          child: TextField(
                                            onChanged: (value) =>
                                                _cardFieldsController
                                                    .cardNumber.value = value,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.only(bottom: 13.h),
                                              hintText: MyText.zeronumber,
                                              hintStyle: MyTextStyles.workfont(
                                                fontsize: 16.sp,
                                                color: AppColors.grey,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.h),
                                child: Image.asset(
                                  AppAssets.stockcamera,
                                  width: 24.w,
                                  height: 19.54.h,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          width: 167.w,
                          height: 61.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: AppColors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.expiry,
                                  style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 150.w,
                                  height: 20.h,
                                  child: TextField(
                                    onChanged: (value) => _cardFieldsController
                                        .expiry.value = value,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 13.h),
                                      hintText: MyText.Mmyy,
                                      hintStyle: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 167.w,
                          height: 61.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: AppColors.white),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 6.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.cvv,
                                  style: MyTextStyles.workfont(
                                    fontsize: 16.sp,
                                    color: AppColors.greyText2,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  width: 150.w,
                                  height: 20.h,
                                  child: TextField(
                                    onChanged: (value) =>
                                        _cardFieldsController.cvv.value = value,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 13.h),
                                      hintText: MyText.digits,
                                      hintStyle: MyTextStyles.workfont(
                                        fontsize: 16.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Obx(
            () => Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                color: AppColors.greyBox,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                        color: _cardFieldsController.areTextFieldsFilled
                            ? AppColors.primaryButton
                            : AppColors.disableButton,
                        text: Text(
                          MyText.signupNamecontinue,
                          style: TextStyle(
                              color: _cardFieldsController.areTextFieldsFilled
                                  ? AppColors.btnText
                                  : AppColors.disableBtnText,
                              fontFamily: 'WorkSans',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Get.to(BritishPound());
                        }),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
