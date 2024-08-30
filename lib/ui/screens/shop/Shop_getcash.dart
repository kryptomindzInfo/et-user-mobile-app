import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';

import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/shop/widget/shop_getcashwidget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class shopgetcash extends StatefulWidget {
  const shopgetcash({super.key});

  @override
  State<shopgetcash> createState() => _shopgetcashState();
}

class _shopgetcashState extends State<shopgetcash> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
            MyText.shop,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 14.h, 20.w, 0),
          child: ListView(
            children: [
              SearchBarWidget(
                hintText: "Home",
                onChanged: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              shopgetwidget(),
              SizedBox(
                height: 180.h,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: MyText.clickh,
                      style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greenText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: MyText.shopfor,
                      style: MyTextStyles.workfont(
                        fontsize: 14.sp,
                        color: AppColors.greyText2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
