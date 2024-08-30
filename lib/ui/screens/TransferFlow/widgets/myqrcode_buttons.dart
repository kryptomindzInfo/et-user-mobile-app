import 'package:et_bank/controllers/transfer/transfer_myqrcode_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class MyQRCodeButtons extends StatefulWidget {
  MyQRCodeButtons({super.key});

  @override
  State<MyQRCodeButtons> createState() => _MyQRCodeButtonsState();
}

class _MyQRCodeButtonsState extends State<MyQRCodeButtons> {
  final ThemeController themeController = Get.put(ThemeController());

  TransferMyQRCodeController controller = Get.put(TransferMyQRCodeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.qrbgcolor,
            borderRadius: BorderRadius.circular(17)),
        height: 52.h,
        width: 218.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 48.h,
              width: 108.w,
              child: ButtonWidget(
                  borderRadius: 16,
                  color: controller.getScanButtonColor(),
                  text: Text(
                    MyText.Scan,
                    style: TextStyle(
                        color: controller.getScanButtonTextColor(),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Work Sans'),
                  ),
                  onPressed: () {
                    controller.setPastValue(true);
                  }),
            ),
            Container(
              height: 48.h,
              width: 108.w,
              child: ButtonWidget(
                  borderRadius: 16,
                  color: controller.getMyCodeButtonColor(),
                  text: Text(
                    MyText.Mycode,
                    style: TextStyle(
                        color: controller.getMyCodeButtonTextColor(),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  onPressed: () {
                    controller.setPastValue(false);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
