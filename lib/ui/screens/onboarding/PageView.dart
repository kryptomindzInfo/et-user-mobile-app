import 'package:et_bank/controllers/onboarding/controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding2.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding3.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding4.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding5.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding6.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding7.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding8.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyPageView extends StatefulWidget {
  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final MyPageController controller = Get.put(MyPageController());
  final ThemeController themeController = Get.put(ThemeController());

  final List<Widget> _pages = [
    onboarding(),
    onboarding2(),
    onboarding3(),
    onboarding4(),
    onboarding5(),
    onboarding6(),
    onboarding7(),
    onboarding8(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            left: 10.w,
            top: 0,
            right: 10.w,
            height: 100.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Obx(
                () => Row(
                  children: List<Widget>.generate(_pages.length, (index) {
                    return InkWell(
                      onTap: () {
                        controller.pageController.animateToPage(
                          index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Container(
                        width: 43.w,
                        height: 2.h,
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.r),
                          border: Border.all(
                            color: controller.getPageIndicatorColor(index),
                            width: 1.w,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
