import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Insurance/Widget/petinsurancewidget.dart';
import 'package:et_bank/ui/screens/Insurance/basic_pet_coverage.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class petinsurance extends StatefulWidget {
  petinsurance({super.key});

  @override
  State<petinsurance> createState() => _petinsuranceState();
}

class _petinsuranceState extends State<petinsurance> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ),
              ),
            ],
          ),
        ),
        title: Text(
          MyText.petins,
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
                      Get.to(basicpetcoverage());
                    },
                    child: petinsurancewidget(
                      imagePath: AppAssets.pet1,
                      labelText: MyText.bsicpet,
                    )),
                SizedBox(
                  width: 15,
                ),
                petinsurancewidget(
                  imagePath: AppAssets.pet2,
                  labelText: MyText.Comprehpet,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                petinsurancewidget(
                  imagePath: AppAssets.pet3,
                  labelText: MyText.Premiumpet,
                ),
                SizedBox(
                  width: 15,
                ),
                petinsurancewidget(
                  imagePath: AppAssets.pet4,
                  labelText: MyText.Seniorpet,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                petinsurancewidget(
                  imagePath: AppAssets.pet5,
                  labelText: MyText.Multipet,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
