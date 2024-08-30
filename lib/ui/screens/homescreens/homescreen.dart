import 'package:et_bank/controllers/home/homecontroller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/Linked_account/widget/Linkedaccountplan.dart';
import 'package:et_bank/global/constants/colors.dart';

import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/screens/card/widget/cardwidget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Other/Otherwidget.dart';

import 'package:et_bank/ui/screens/homescreens/widget/homewidget.dart';
import 'package:et_bank/ui/screens/searches/searches_suggestedproducts.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ListController controller = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    print("sss ${controller.selectedIndex}");
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    Profile(),
                  );
                },
                child: Image.asset(
                  AppAssets.appbar1,
                  width: 34.w,
                  height: 34.h,
                ),
              ),
            ),
            centerTitle: true,
            title: GetBuilder<ListController>(
              builder: (listController) {
                // Use the selected index to determine the title
                String title = '';
                switch (listController.selectedIndex.value) {
                  case 0:
                    title = 'Acounts';
                    break;
                  case 1:
                    title = 'Card';
                    break;
                  case 2:
                    title = 'Linked';
                    break;
                  case 3:
                    title = 'Other';
                    break;
                  default:
                    title = '';
                }

                return Text(
                  title,
                  style: MyTextStyles.sora5(
                    fontsize: 16.sp,
                    color: AppColors.primaryText,
                  ),
                );
              },
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
              children: [
                SearchBarWidget(
                  hintText: "Home",
                  onChanged: (value) {
                    if (value.length > 0) {
                      Get.to(
                        SearchesSuggestedProducts(),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 39.h,
                  child: GetBuilder<ListController>(builder: (listController) {
                    return ListView.builder(
                      itemCount: listController.textItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        // final isSelected =
                        //     index == listController.selectedIndex.value;
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: GestureDetector(
                            onTap: () {
                              listController.selectItem(index);
                            },
                            child: Container(
                              width: 100.w,
                              height: 39.h,
                              decoration: BoxDecoration(
                                color:
                                    listController.getPageIndicatorColor(index),
                                borderRadius: BorderRadius.circular(70.r),
                              ),
                              child: Center(
                                child: Text(
                                  listController.textItems[index],
                                  style: MyTextStyles.worknormal(
                                    fontsize: 16.sp,
                                    color:
                                        listController.getItemTextColor(index),
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
                GetBuilder<ListController>(
                  builder: (listController) {
                    switch (listController.selectedIndex.value) {
                      case 0:
                        return Homewidget();
                      case 1:
                        return Cardwidget();
                      case 2:
                        return Linkedaccountplan();
                      case 3:
                        return Otherswidget();
                      default:
                        return Container();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
