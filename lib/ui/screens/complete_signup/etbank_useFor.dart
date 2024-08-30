import 'package:et_bank/controllers/complete_signup/compsignup_BandUsedFor_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_choose_account.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/chip_widget.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupBankUsedFor extends StatefulWidget {
  CompSignupBankUsedFor({super.key});

  @override
  State<CompSignupBankUsedFor> createState() => _CompSignupBankUsedForState();
}

class _CompSignupBankUsedForState extends State<CompSignupBankUsedFor> {
  final ThemeController themeController = Get.put(ThemeController());

  List chips = [
    {
      'title': MyText.compSignupBankUsedForChipText1,
      'icon': AppAssets.chipIcon1,
    },
    {
      'title': MyText.compSignupBankUsedForChipText2,
      'icon': AppAssets.chipIcon2,
    },
    {
      'title': MyText.compSignupBankUsedForChipText3,
      'icon': AppAssets.chipIcon3,
    },
    {
      'title': MyText.compSignupBankUsedForChipText4,
      'icon': AppAssets.chipIcon4,
    },
    {
      'title': MyText.compSignupBankUsedForChipText5,
      'icon': AppAssets.chipIcon5,
    },
    {
      'title': MyText.compSignupBankUsedForChipText6,
      'icon': AppAssets.chipIcon6,
    },
    {
      'title': MyText.compSignupBankUsedForChipText7,
      'icon': AppAssets.chipIcon7,
    },
    {
      'title': MyText.compSignupBankUsedForChipText8,
      'icon': AppAssets.chipIcon8,
    },
    {
      'title': MyText.compSignupBankUsedForChipText9,
      'icon': AppAssets.chipIcon9,
    },
    {
      'title': MyText.compSignupBankUsedForChipText10,
      'icon': AppAssets.chipIcon10,
    },
    {
      'title': MyText.compSignupBankUsedForChipText11,
      'icon': AppAssets.chipIcon11,
    },
    {
      'title': MyText.compSignupBankUsedForChipText12,
      'icon': AppAssets.chipIcon12,
    },
    {
      'title': MyText.compSignupBankUsedForChipText13,
      'icon': AppAssets.chipIcon13,
    },
    {
      'title': MyText.compSignupBankUsedForChipText14,
      'icon': AppAssets.chipIcon14,
    },
    {
      'title': MyText.compSignupBankUsedForChipText15,
      'icon': AppAssets.chipIcon15,
    },
    {
      'title': MyText.compSignupBankUsedForChipText16,
      'icon': AppAssets.chipIcon16,
    },
    {
      'title': MyText.compSignupBankUsedForChipText17,
      'icon': AppAssets.chipIcon17,
    },
    {
      'title': MyText.compSignupBankUsedForChipText18,
      'icon': AppAssets.chipIcon18,
    },
  ];

  CompSignupBankUsedForController compSignupBankUsedForController =
      Get.put(CompSignupBankUsedForController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  MyText.compSignupBankUsedForTitle,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora'),
                ),
                Text(
                  MyText.compSignupBankUsedForsubTitle,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'WorkSans'),
                ),
                SizedBox(
                  height: 30.h,
                ),
                GetBuilder<CompSignupBankUsedForController>(builder: (cont) {
                  return Wrap(
                    spacing: 5,
                    alignment: WrapAlignment.start,
                    children: chips.map(
                      (e) {
                        int index = chips.indexOf(e);
                        return ActionChipWidget(
                          backgroundcolor: cont.getBackgroundColor(index),
                          textColor: cont.getTextColor(index),
                          onPressed: () {
                            cont.selectChips(index);
                          },
                          image: chips[index]['icon'],
                          labelText: chips[index]['title'],
                        );
                      },
                    ).toList(),
                  );
                })
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Obx(
            () => Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                color: themeController.bgColor.value,
                child: Center(
                  child: SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: const Text(
                        MyText.compSignupBankUsedForContinue,
                        style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompSignupChooseAccount(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
