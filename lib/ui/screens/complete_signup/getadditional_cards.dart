import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_code.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/getadditional_card_widget.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GetAdditionalCard extends StatefulWidget {
  GetAdditionalCard({super.key});

  @override
  State<GetAdditionalCard> createState() => _GetAdditionalCardState();
}

class _GetAdditionalCardState extends State<GetAdditionalCard> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 108),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            AppAssets.leftarrow,
                            width: 25.12.w,
                            height: 17.94.h,
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        MyText.compSignupGetAdditionalCardsTitle,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Sora'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                GetAdditionalCardWidget(
                  title: MyText.compSignupGetAdditionalCardsPhysicalCard,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompSignupCode()));
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                GetAdditionalCardWidget(
                  title: MyText.compSignupGetAdditionalCardsVirtualCard,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompSignupCode()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
