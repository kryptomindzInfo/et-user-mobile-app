import "package:et_bank/controllers/theme/theme_contrtoller.dart";
import "package:et_bank/global/constants/colors.dart";
import "package:et_bank/ui/resources/constant/app_assets.dart";
import "package:et_bank/ui/resources/constant/app_text.dart";
import "package:et_bank/ui/resources/constant/app_textstyle.dart";
import "package:et_bank/ui/screens/child_account_flow/wlecome_childaccount.dart";
import "package:et_bank/ui/widgets/button.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";

class CreateChildAccount extends StatefulWidget {
  const CreateChildAccount({super.key});

  @override
  State<CreateChildAccount> createState() => _CreateChildAccountState();
}

class _CreateChildAccountState extends State<CreateChildAccount> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 349.w,
            decoration: BoxDecoration(
                color: AppColors.yellowButton2,
                borderRadius: BorderRadius.circular(28)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 20, 18, 11),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.create_child_account,
                        height: 43.h,
                        width: 43.w,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.CreateaChildAccount,
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            width: 240.w,
                            child: Text(
                              MyText.Asafeandeducationalspace,
                              style: TextStyle(
                                  color: AppColors.buttongrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ButtonWidget(
                      color: AppColors.secondaryButton2,
                      text: Text(
                        MyText.Getstarted,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      onPressed: () {
                        Get.to(
                          WelcomeChildAccount(),
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
