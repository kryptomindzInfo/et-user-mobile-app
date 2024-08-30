import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/identity%20flow/Citizen.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class Conpasscode extends StatefulWidget {
  const Conpasscode({super.key});

  @override
  State<Conpasscode> createState() => _ConpasscodeState();
}

class _ConpasscodeState extends State<Conpasscode> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    var applocal = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      applocal.conpasscode,
                      style: MyTextStyles.sora5(
                          fontsize: 26.sp, color: AppColors.primaryText),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 240.h, left: 30.w, right: 30.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(),
                    child: TextFormField(
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 28.sp,
                          letterSpacing: 10.sp),
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '.........',
                        contentPadding: EdgeInsets.only(left: 40.w),
                        hintStyle: TextStyle(
                          fontSize: 50.sp,
                          color: AppColors.greyText2,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
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
                        color: AppColors.primaryButton,
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
                                  builder: (context) => Citizen()));
                        }),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
