import 'package:et_bank/controllers/exchangeflowcontroller/exchangecontroler.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Exchange_flow/ordertype.dart';
import 'package:et_bank/ui/screens/Exchange_flow/sellgbp.dart';
import 'package:et_bank/ui/screens/Exchange_flow/widget/currencywidget.dart';
import 'package:et_bank/ui/screens/Exchange_flow/widget/currencywidget2.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Bupgpb extends StatefulWidget {
  @override
  State<Bupgpb> createState() => _BupgpbState();
}

class _BupgpbState extends State<Bupgpb> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              GetBuilder<BupgpbController>(
                init: BupgpbController(),
                builder: (controller) => Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppAssets.leftarrow,
                        width: 25.12.w,
                        height: 17.94.h,
                        color: AppColors.primaryText  ,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      controller.textValue,
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        OrdertypeBottomSheet(context);
                      },
                      child: Text(
                        MyText.MO,
                        style: MyTextStyles.workfont(
                          fontsize: 14.sp,
                          color: AppColors.greenText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      AppAssets.icon_arrow_down,
                      color: AppColors.greenText,
                      width: 13.33.w,
                      height: 6.36.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  children: [
                    Image.asset(AppAssets.buyicon),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      MyText.buygbpe1,
                      style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greenText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GetBuilder<BupgpbController>(
                  init: BupgpbController(),
                  builder: (controller) => Stack(
                    children: [
                      Positioned(
                        top: controller.container1Top,
                        left: 0,
                        child: CustomCurrencyInputWidget(
                          gbpText: MyText.gbp,
                          hintText: MyText.bal0,
                          balanceText: MyText.bal,
                          containerColor: AppColors.allBoxes,
                          maxLimit: 100,
                          exceededColor: AppColors.lightRed,
                        ),
                      ),
                      Positioned(
                        top: controller.container2Top,
                        left: 0,
                        child: CustomCurrencyInputWidget2(
                          gbpText: MyText.EUR,
                          hintText: MyText.bal0,
                          balanceText: MyText.bal,
                          containerColor: AppColors.allBoxes,
                          maxLimit: 100,
                          exceededColor: AppColors.lightRed,
                        ),
                      ),
                      Positioned(
                        top: 105,
                        left: 150,
                        child: GestureDetector(
                          onTap: () {
                            controller.toggleContainers();
                          },
                          child: Image.asset(controller.imagePath),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) {
            final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
            return Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: keyboardHeight),
                child: BottomAppBar(
                  elevation: 0,
                  color: themeController.bgColor.value,
                  child: Center(
                    child: SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.disableButton,
                          text: Text(
                            "Review order",
                            style: TextStyle(
                                color: AppColors
                                    .disableBtnText,
                                fontFamily: 'WorkSans',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Get.to(
                              sellgbp(),
                            );
                          }),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
