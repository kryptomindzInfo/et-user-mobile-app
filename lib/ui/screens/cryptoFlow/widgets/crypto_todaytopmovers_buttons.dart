import 'package:et_bank/controllers/crypto_flow/crypto_discover_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CryptoTopMoversButtons extends StatefulWidget {
  CryptoTopMoversButtons({super.key});

  @override
  State<CryptoTopMoversButtons> createState() => _CryptoTopMoversButtonsState();
}

class _CryptoTopMoversButtonsState extends State<CryptoTopMoversButtons> {
  final ThemeController themeController = Get.put(ThemeController());

  CryptoDiscoverController controller = Get.put(CryptoDiscoverController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.inActiveTabButtons2,
            borderRadius: BorderRadius.circular(48),
          ),
          height: 43.h,
          width: 319.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 43.h,
                width: 158.w,
                child: ButtonWidget(
                    color: controller.gettopGainersButtonColor(),
                    text: Text(
                      MyText.Topgainers,
                      style: TextStyle(
                          color: controller.gettopGainersButtonTextColor(),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Work Sans'),
                    ),
                    onPressed: () {
                      controller.settopGainersValue(true);
                    }),
              ),
              Container(
                height: 43.h,
                width: 158.w,
                child: ButtonWidget(
                    color: controller.gettopLosersButtonColor(),
                    text: Text(
                      MyText.Toplosers,
                      style: TextStyle(
                          color: controller.gettopLosersButtonTextColor(),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                    onPressed: () {
                      controller.settopGainersValue(false);
                    }),
              ),
            ],
          ),
        );
      }),
    );
  }
}
