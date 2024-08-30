import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/Overviewwidget.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/dailystreak.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/xpinvestment.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Widget/xptransfer.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Xplevelbar extends StatelessWidget {
  Xplevelbar({super.key});
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
                onTap: (){
                  Get.back();
                },
                child: Image.asset(
                  AppAssets.leftarrow,
                  width: 25.12.w,
                  height: 17.94.h,
                  color: AppColors.primaryText  ,
                ),
              
            ),
          ),
          centerTitle: true,
          title: Text(
            MyText.xplevel,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(
                hintText: "home",
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 39.h,
                child: GetBuilder<ListController>(builder: (listController) {
                  return ListView.builder(
                    itemCount: listController.textItems2.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final isSelected =
                          index == listController.selectedIndex2.value;
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: GestureDetector(
                          onTap: () {
                            listController.selectItem2(index);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 39.h,
                            decoration: BoxDecoration(
                              color:
                                  listController.getPageIndicatorColor2(index),
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                              child: Text(
                                listController.textItems2[index],
                                style: MyTextStyles.worknormal(
                                  fontsize: 16.sp,
                                  color:
                                      listController.getItemTextColor2(index),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView(
                  children: [
                    GetBuilder<ListController>(
                      builder: (listController) {
                        switch (listController.selectedIndex2.value) {
                          case 0:
                            return Overviewwidget();
                          case 1:
                            return Dailystreak();
                          case 2:
                            return XpTransfer();
                          case 3:
                            return Xpinvestment();

                          default:
                            return Container();
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
