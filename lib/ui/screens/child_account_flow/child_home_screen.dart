import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/widgets/child_home_brandsandfood_widget.dart';
import 'package:et_bank/ui/screens/child_account_flow/widgets/child_home_recenttransaction_widget.dart';
import 'package:et_bank/ui/screens/child_account_flow/widgets/child_home_totalamount_widget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChildHomeScreen extends StatefulWidget {
  ChildHomeScreen({
    super.key,
  });

  @override
  State<ChildHomeScreen> createState() => _ChildHomeScreenState();
}

class _ChildHomeScreenState extends State<ChildHomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: AppColors.childBlue,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 110.h,
              collapsedHeight: 110.h,
              pinned: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(19, 50, 19, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppAssets.child_image,
                            height: 32.h,
                            width: 32.w,
                          ),
                          Text(
                            MyText.Home,
                            style: TextStyle(
                                color: AppColors.white,
                                fontFamily: MyTextStyles.soraFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Image.asset(
                            AppAssets.notifi,
                            height: 25.h,
                            width: 19.w,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14.h, bottom: 8.h),
                            child: SearchBarWidget(
                              color: AppColors.childDarkBlue,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SliverToBoxAdapter

            SliverToBoxAdapter(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.childYellow,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ChildHomeTotalAmountWidget(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 18, 22, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyText.RecentTransaction,
                                style: TextStyle(
                                    color: themeController.bgColor.value,
                                    fontFamily: MyTextStyles.soraFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                MyText.Viewdetails,
                                style: TextStyle(
                                    color: AppColors.childDarkBlue,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        ChildHomeRecentTransactionWidget(),
                        SizedBox(
                          height: 8.h,
                        ),
                        BrandsAndFoodWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
