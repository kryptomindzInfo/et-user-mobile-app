import 'package:et_bank/controllers/complete_signup/comp_signup_chooseaccount_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/compsignup_ultra_richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UltraAccountCard extends StatefulWidget {
  UltraAccountCard({super.key});

  @override
  State<UltraAccountCard> createState() => _UltraAccountCardState();
}

class _UltraAccountCardState extends State<UltraAccountCard> {
  final ThemeController themeController = Get.put(ThemeController());
  CompSignupBankChooseAccountController compSignupBankChooseAccountController =
      Get.put(CompSignupBankChooseAccountController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 300.h,
        width: 350.w,
        child: Card(
          color: compSignupBankChooseAccountController
              .cardBackgroundColorUltraAccount(),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: compSignupBankChooseAccountController
                  .cardBorderColorUltraAccount(),
            ),
            borderRadius: BorderRadius.circular(28.0),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        MyText.compSignupChooseAccountUltraAccount,
                        style: TextStyle(
                            color: compSignupBankChooseAccountController
                                .textBackgroundColorUltraAccount(),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Sora'),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    if (compSignupBankChooseAccountController
                            .accountSelected.value ==
                        3)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.circleIcon,
                              borderRadius: BorderRadius.circular(19)),
                          height: 22.h,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Row(
                              children: [
                                Image.asset(AppAssets.iconTick),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Text(
                                  MyText.compSignupChooseAccountActive,
                                  style: TextStyle(
                                      color: AppColors.blackText,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'WorkSans'),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 124.w,
                  height: 28.h,
                  decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(19)),
                  child: Center(
                    child: Text(
                      MyText.compSignupChooseAccountUltraProAccountPrice,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'WorkSans'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(child: CompSignupUltraAccountRichText()),
                SizedBox(
                  height: 27.h,
                ),
                SizedBox(
                  height: 48.h,
                  width: 318.w,
                  child: ButtonWidget(
                      color: compSignupBankChooseAccountController
                          .getUltraButtonColorUltraAccount(),
                      text: Text(
                        MyText.compSignupChooseAccountGetUltraPlan,
                        style: TextStyle(
                            color: AppColors.blackText,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'WorkSans'),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
