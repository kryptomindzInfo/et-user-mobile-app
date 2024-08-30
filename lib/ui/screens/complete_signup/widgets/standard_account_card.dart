import 'package:et_bank/controllers/complete_signup/comp_signup_chooseaccount_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/getadditional_cards.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/compsignup_richtext.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StandardAccountCard extends StatefulWidget {
  StandardAccountCard({super.key});

  @override
  State<StandardAccountCard> createState() => _StandardAccountCardState();
}

class _StandardAccountCardState extends State<StandardAccountCard> {
  final ThemeController themeController = Get.put(ThemeController());
  CompSignupBankChooseAccountController compSignupBankChooseAccountController =
      Get.put(CompSignupBankChooseAccountController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        height: 340.h,
        width: 350.w,
        child: Card(
          color: compSignupBankChooseAccountController
              .cardBackgroundColorStandardAccount(),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: compSignupBankChooseAccountController
              .cardBorderColorStandardAccount()),
            borderRadius: BorderRadius.circular(28.0),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 12, 0),
            child: Obx(() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          MyText.compSignupChooseAccountstandardAccount,
                          style: TextStyle(
                              color: compSignupBankChooseAccountController
                                  .textBackgroundColorStandardAccount(),
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Sora'),
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      compSignupBankChooseAccountController
                                  .accountSelected.value ==
                              1
                          ? Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.circleIcon,
                                    borderRadius: BorderRadius.circular(19)),
                                height: 22.h,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(AppAssets.iconTick),
                                      SizedBox(
                                        width: 9,
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
                                        width: 7.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 94.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.circular(19)),
                    child: Center(
                      child: Text(
                        MyText.compSignupChooseAccountFree,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'WorkSans'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Container(child: CompSignupStandardAccountRichText()),
                  SizedBox(
                    height: 27.h,
                  ),
                  SizedBox(
                    height: 48.h,
                    width: 318.w,
                    child: ButtonWidget(
                        color: compSignupBankChooseAccountController
                            .getStandardButtonColorStandardAccount(),
                        text: Text(
                          MyText.compSignupChooseAccountGetStandardPlan,
                          style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'WorkSans'),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GetAdditionalCard()));
                        }),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: SizedBox(
                      height: 48.h,
                      width: 318.w,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(48)),
                            border: Border.all(
                              color: Colors.black,
                            )),
                        child: ButtonWidget(
                            color: compSignupBankChooseAccountController
                                        .accountSelected.value ==
                                    1
                                ? AppColors.white
                                : AppColors.greyBox,
                            text: Text(MyText
                                .compSignupChooseAccountGetAdditonalCards),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GetAdditionalCard()));
                            }),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      );
    });
  }
}
