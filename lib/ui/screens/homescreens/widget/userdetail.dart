import 'package:et_bank/controllers/Bottomnavigation/bottomcontroller.dart';
import 'package:et_bank/controllers/settings/settings_security_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/AddMoney.dart';
import 'package:et_bank/ui/screens/Exchange_flow/bup_gbp.dart';

import 'package:et_bank/ui/screens/homescreens/widget/circular_button.dart';
import 'package:et_bank/ui/screens/homescreens/widget/esim_home_not_activated_widget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/esim_home_widget.dart';
import 'package:et_bank/ui/screens/homescreens/widget/showMoreMenuWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomUserDetails extends StatefulWidget {
  final List<Map<String, String>> items;

  CustomUserDetails({required this.items});

  @override
  State<CustomUserDetails> createState() => _CustomUserDetailsState();
}

class _CustomUserDetailsState extends State<CustomUserDetails> {
  ShowMoreMenuWidget showMoreMenuWidget = ShowMoreMenuWidget();

  BtmNavigationController controller = Get.put(BtmNavigationController());

  SettingsSecurityController settingsSecurityController =
      Get.put(SettingsSecurityController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50.w,
              child: Row(
                children: [
                  Text(
                    MyText.price1,
                    style: MyTextStyles.sora5(
                      fontsize: 48.sp,
                      color: AppColors.greenText2,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.inActiveTabButtons1,
                      ),
                      child: Image.asset(
                        AppAssets.vector,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image.asset(
              AppAssets.citizen,
              width: 50.w,
              height: 50.h,
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          MyText.pound,
          style: MyTextStyles.worknormal(
            fontsize: 16.sp,
            color: AppColors.rgblack,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        settingsSecurityController.firstTimeEsim.value == true
            ? EsimHomeNotActivatedWidget()
            : EsimHomeWidget(),
        Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(
                      AddMoney(),
                    );
                  },
                  child: CircularButtonHome(
                    image: AppAssets.add,
                    text: MyText.addmoney,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(Bupgpb());
                  },
                  child: CircularButtonHome(
                    image: AppAssets.exchange,
                    text: MyText.exchange,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showMoreMenuWidget.showDropdownList(context);
                  },
                  child: CircularButtonHome(
                    image: AppAssets.menu,
                    text: MyText.more,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
