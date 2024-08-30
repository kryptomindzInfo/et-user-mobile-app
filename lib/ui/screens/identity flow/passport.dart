import 'package:et_bank/controllers/Radiobutton/radio.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/identity%20flow/Circularprogress.dart';

import 'package:et_bank/ui/widgets/button.dart';
import 'package:et_bank/ui/widgets/radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class Passport extends StatefulWidget {
  Passport({super.key});

  @override
  State<Passport> createState() => _PassportState();
}

class _PassportState extends State<Passport> {
  final RadioController controller = Get.put(RadioController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    applocal.passport1,
                    style: MyTextStyles.sora5(
                        fontsize: 26.sp, color: AppColors.primaryText),
                  ),
                  Text(
                    applocal.passport2,
                    style: MyTextStyles.worknormal(
                        fontsize: 16.sp, color: AppColors.primaryText),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.h),
                    child: Container(
                      width: 348.w,
                      height: 166.h,
                      decoration: BoxDecoration(
                          color: AppColors.greyBox,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        child: Column(
                          children: [
                            RadioRow(
                                label: "Passport",
                                index: 0,
                                controller: controller),
                            SizedBox(
                              height: 10.h,
                            ),
                            RadioRow(
                                label: "Driving License",
                                index: 1,
                                controller: controller),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Builder(builder: (context) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Obx(
          () => Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primary,
                      text: const Text(
                        "Continue",
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyCircularProgressIndicator()));
                      }),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
