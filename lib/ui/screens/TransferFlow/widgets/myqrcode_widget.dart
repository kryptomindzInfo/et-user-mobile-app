import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class MyQRCodeWidget extends StatefulWidget {
  const MyQRCodeWidget({super.key});

  @override
  State<MyQRCodeWidget> createState() => _MyQRCodeWidgetState();
}

class _MyQRCodeWidgetState extends State<MyQRCodeWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              MyText.Profilename,
              style: MyTextStyles.sora(
                  fontsize: 40.sp, color: AppColors.primaryText),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                width: 55,
                height: 55,
                child: Image.asset(
                  AppAssets.appbar1,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        Text(
            // textAlign: TextAlign.start,
            MyText.Profileuser,
            style: MyTextStyles.workfont(
                fontsize: 14.sp,
                color: AppColors.greenText,
                fontWeight: FontWeight.w400)),
        SizedBox(
          height: 15.h,
        ),
        Center(
          child: QrImageView(
            data: 'This QR code has an embedded image as well',
            version: QrVersions.auto,
            backgroundColor: themeController.bgColor.value,
            foregroundColor: themeController.bgColor.value,
            size: 320,
            gapless: false,
            embeddedImage: AssetImage(AppAssets.qrimage),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(317.w, 313.h),
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyText.Getpaidwith,
              style: TextStyle(
                  color: AppColors.greyText2,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
            Tooltip(
              height: 40.h,
              margin: EdgeInsets.only(right: 90, top: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.allBoxes),
              triggerMode: TooltipTriggerMode.tap,
              message: MyText.linkCopied,
              textStyle: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.worksansFamily),
              child: Text(
                MyText.etbankalinajames,
                style: TextStyle(
                    color: AppColors.greenText,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Tooltip(
              height: 40.h,
              margin: EdgeInsets.only(right: 100, top: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.DarkGrey),
              triggerMode: TooltipTriggerMode.tap,
              message: MyText.linkCopied,
              textStyle: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.worksansFamily),
              child: Image.asset(
                AppAssets.copy,
                height: 19.h,
                width: 19.w,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100.h,
        ),
      ],
    );
  }
}
