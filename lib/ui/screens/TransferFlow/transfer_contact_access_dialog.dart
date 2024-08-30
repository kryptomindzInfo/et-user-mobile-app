import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());
class TransferContactDialog {
  void Function()? onPressed;
  TransferContactDialog({required this.onPressed});
  showTransferContactDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.all(20),
          backgroundColor: AppColors.white,
          elevation: 0,
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            MyText.TransferContactDialogTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: MyTextStyles.soraFamily,
            ),
          ),
          content: Text(
            MyText.TransferContactDialogsubTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.greyText2,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: MyTextStyles.worksansFamily,
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 38.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: AppColors.primaryButton,
                  ),
                  child: TextButton(
                    onPressed: onPressed,
                    child: Text(
                      MyText.Allow,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.worksansFamily,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 38.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: AppColors.transferCancelButton,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      MyText.Cancel,
                      style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.worksansFamily,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
