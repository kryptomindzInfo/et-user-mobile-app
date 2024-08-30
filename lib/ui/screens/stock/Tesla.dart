import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/controllers/stockcontroller/stockteslacontroller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/buy_stock_input.dart';
import 'package:et_bank/ui/screens/stock/stockaccount.dart';
import 'package:et_bank/ui/screens/stock/widget/Financial.dart';
import 'package:et_bank/ui/screens/stock/widget/Overview/Overview.dart';
import 'package:et_bank/ui/screens/stock/widget/stocknews.dart';
import 'package:et_bank/ui/screens/stock/widget/Transactionstock.dart';
import 'package:et_bank/ui/screens/stock/widget/stockorder.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/stock/widget/stocksilver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Tesla extends StatefulWidget {
  @override
  State<Tesla> createState() => _TeslaState();
}

class _TeslaState extends State<Tesla> {
  final stockteslacontroller controller = Get.put(stockteslacontroller());

  final List<String> container1 = [
    "Overview",
    "Financials",
    "News",
    "Orders",
    "Transaction"
  ];

  Widget _buildSelectedWidget() {
    switch (controller.selectedIndex.value) {
      case 0:
        return Overview();
      case 1:
        return Financial();
      case 2:
        return Stocknews();
      case 3:
        return stockorder();
      case 4:
        return stockTransaction();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 25.12.w,
                height: 17.94.h,
                child: Image.asset(
                  AppAssets.leftarrow,
                  width: 25.12.w,
                  height: 17.94.h,
                  color: AppColors.primaryText,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(
                AppAssets.notifi,
                width: 19.44.w,
                height: 25.27.h,
                color: AppColors.primaryText,
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: AppColors.blackBox,
                expandedHeight: 180.h,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tesla",
                                style: TextStyle(
                                  fontSize: 40.sp,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'TSLA ',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Electric Vehicles',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: AppColors.greyText2,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Capital at risk",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.primaryText,
                                  // Add other text styles if needed
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.h),
                                child: Row(
                                  children: [
                                    Obx(() {
                                      return GestureDetector(
                                        onTap: () {
                                          controller.selectBuy();
                                          Get.to(stockbuytesla());
                                        },
                                        child: Container(
                                          width: 82.w,
                                          height: 39.h,
                                          decoration: BoxDecoration(
                                            color:
                                                controller.isBuySelected.value
                                                    ? AppColors.yellowButton
                                                    : AppColors.disableButton,
                                            borderRadius:
                                                BorderRadius.circular(70.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+ Buy",
                                              style: MyTextStyles.workfont(
                                                fontsize: 16.sp,
                                                color: controller
                                                        .isBuySelected.value
                                                    ? AppColors.blackText
                                                    : AppColors.greyText2,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                    SizedBox(width: 7.w),
                                    Obx(() {
                                      return GestureDetector(
                                        onTap: () {
                                          controller.selectSell();
                                        },
                                        child: Container(
                                          width: 82.w,
                                          height: 39.h,
                                          decoration: BoxDecoration(
                                            color:
                                                controller.isSellSelected.value
                                                    ? AppColors.yellowButton
                                                    : AppColors.disableButton,
                                            borderRadius:
                                                BorderRadius.circular(70.r),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "- Sell",
                                              style: MyTextStyles.workfont(
                                                fontsize: 16.sp,
                                                color: controller
                                                        .isSellSelected.value
                                                    ? AppColors.blackText
                                                    : AppColors.greyText2,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Container(
                              width: 55.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                  child: Image.asset(
                                AppAssets.Tesla,
                                width: 43.12.w,
                                height: 42.84.h,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverAppBarDelegate(
                minHeight: 42.h,
                maxHeight: 42.h,
                child: GetBuilder<stockteslacontroller>(builder: (_) {
                  return Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      color: AppColors.greyBox,
                      height: 50.h,
                      child: ListView.builder(  
                        scrollDirection: Axis.horizontal,
                        itemCount: container1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7.w),
                            child: GestureDetector(
                              onTap: () {
                                controller.selectIndex(index);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Container(
                                  width: 87.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    color: controller.selectedIndex == index
                                        ? AppColors.white
                                        : AppColors.grey,
                                    borderRadius: BorderRadius.circular(70.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      container1[index],
                                      style: MyTextStyles.workfont(
                                        fontsize: 12.sp,
                                        color: controller.selectedIndex == index
                                            ? AppColors.blackColor
                                            : Color(0xff4B4B4C),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  GetBuilder<stockteslacontroller>(
                    builder: (_) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: _buildSelectedWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
