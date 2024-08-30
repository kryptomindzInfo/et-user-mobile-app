import 'package:et_bank/controllers/accountsettings/changeyouricon_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/changeyouricon_widget.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void showchangeiconBottomSheet(BuildContext context) {
  ChangeIconController changeIconController = Get.put(ChangeIconController());

  showModalBottomSheet(
    backgroundColor: AppColors.greyBox,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return  Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 370.h,
          width: 390.w,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 11.0, left: 0, right: 0, bottom: 20),
            child: Obx(() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallRoundedContainerWidget(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          MyText.Changeyouricon,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 37.h,
                  ),
                  InkWell(
                    onTap: () {
                      changeIconController.setAccountSelected(1);
                    },
                    child: ChangeYourIconWidget(
                      image: AppAssets.standard_icon,
                      title: MyText.Standard,
                      color: changeIconController.ColorStandardAccount(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () {
                      changeIconController.setAccountSelected(2);
                    },
                    child: ChangeYourIconWidget(
                      image: AppAssets.premium_icon,
                      title: MyText.Premium,
                      color: changeIconController.ColorPremiunAccount(),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  InkWell(
                    onTap: () {
                      changeIconController.setAccountSelected(3);
                    },
                    child: ChangeYourIconWidget(
                      image: AppAssets.ultra_icon,
                      title: MyText.Ultra,
                      color: changeIconController.ColorUltraAccount(),
                    ),
                  ),
                ],
              );
            }),
          ),
        );
    },
  );
}
