import 'package:et_bank/controllers/stockcontroller/stockagreementcontroller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/w8bin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StockAgreement extends StatefulWidget {
  StockAgreement({super.key});

  @override
  State<StockAgreement> createState() => _StockAgreementState();
}

class _StockAgreementState extends State<StockAgreement> {
  final ThemeController themeController = Get.put(ThemeController());

  final AgreementController yourController = Get.put(AgreementController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GetX<AgreementController>(builder: (controller) {
        return Padding(
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
                      "Agreements",
                      style: MyTextStyles.sora5(
                          fontsize: 26.sp, color: AppColors.primaryText,),
                    )
                  ],
                ),
              ),
              Text(
                MyText.stockplease,
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 349.w,
                height: 372.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: ListView.builder(
                    itemCount: yourController.dataAgreementList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.h, horizontal: 15.w),
                        child: Row(
                          children: [
                            Container(
                              width: 43.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.rgbGREEN,
                              ),
                              child: Center(
                                  child: Image.asset(
                                AppAssets.agreement,
                                width: 18.w,
                                height: 24.h,
                                color: AppColors.greenText,
                              )),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              yourController.dataAgreementList[index],
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                yourController.toggleButton(index);
                              },
                              child: Obx(() {
                                return yourController.isOpenButtonTapped[index]
                                    ? Container(
                                        width: 81.w,
                                        height: 39.h,
                                        child: Center(
                                          child: Container(
                                            width: 24.w,
                                            height: 24.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.primaryButton,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                                child: Image.asset(
                                              AppAssets.singletick,
                                              width: 12.w,
                                              height: 9.4.h,
                                            )),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 81.w,
                                        height: 39.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.yellowButton,
                                          borderRadius:
                                              BorderRadius.circular(70.r),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Open",
                                          style: MyTextStyles.sorafont(
                                              fontsize: 16.sp,
                                              color: AppColors.blackText,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      );
                              }),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 349.w,
                height: 102.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(28.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Obx(() {
                    return Row(
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: AppColors.primaryText,
                            checkboxTheme:
                                Theme.of(context).checkboxTheme.copyWith(
                                      side: BorderSide(
                                        color: AppColors.primaryText,
                                        width: 2.0,
                                      ),
                                    ),
                          ),
                          child: Checkbox(
                            value: yourController.isChecked.value,
                            onChanged: (value) {
                              yourController.toggle(value!);
                            },
                            activeColor: AppColors.greenText,
                            checkColor: AppColors.blackColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: AppColors
                                    .yellowButton, // Change the border color here
                                width: 6.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          MyText.stockaccept,
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Container(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: yourController.isChecked.value
                          ? AppColors.primaryButton
                          : AppColors.disableButton,
                      text: Text(
                        "Continue",
                        style: TextStyle(
                            color: yourController.isChecked.value
                                ? AppColors.btnText
                                : AppColors.disableBtnText,
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Get.to(W8ben());
                      }),
                ),
              )
            ],
          ),
        );
      }),
    ));
  }
}
