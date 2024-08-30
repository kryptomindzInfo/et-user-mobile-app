import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Insurance/Widget/petinsurancewidget.dart';
import 'package:et_bank/ui/screens/Insurance/standard_package.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class deviceinsurance extends StatefulWidget {
  deviceinsurance({super.key});

  @override
  State<deviceinsurance> createState() => _deviceinsuranceState();
}

class _deviceinsuranceState extends State<deviceinsurance> {
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
            MyText.deviceins,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: ListView(
            children: [
              SearchBarWidget(
                hintText: "Home",
                onChanged: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(standardpackage());
                      },
                      child: petinsurancewidget(
                        imagePath: AppAssets.device1,
                        labelText: MyText.spackage,
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  petinsurancewidget(
                    imagePath: AppAssets.device2,
                    labelText: MyText.epackage,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  petinsurancewidget(
                    imagePath: AppAssets.device3,
                    labelText: MyText.prpackage,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  petinsurancewidget(
                      imagePath: AppAssets.device4,
                      labelText: MyText.Fpackage),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  petinsurancewidget(
                      imagePath: AppAssets.device5,
                      labelText: MyText.Bpackage),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
