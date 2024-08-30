import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Insurance/Widget/inurancewidget.dart';
import 'package:et_bank/ui/screens/Insurance/Widget/moreinsurance_onebundle.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class getmoreinsurance extends StatefulWidget {
  const getmoreinsurance({super.key});

  @override
  State<getmoreinsurance> createState() => _getmoreinsuranceState();
}

class _getmoreinsuranceState extends State<getmoreinsurance> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    )),
              ],
            ),
          ),
          title: Text(
            "Insurance",
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 0.h),
              child: Column(
                children: [
                  SearchBarWidget(
                    hintText: "Home",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Insurancewidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  moreinsurance(),
                  SizedBox(
                    height: 20.h,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: MyText.clickhere,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greenText,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: MyText.forimpinfor,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
