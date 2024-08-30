import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/plasticcard.dart';
import 'package:et_bank/ui/screens/complete_signup/widgets/getadditional_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class getaddcard extends StatelessWidget {
  getaddcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeController.bgColor.value,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            AppAssets.leftarrow,
            color: AppColors.primaryText,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Text(
            MyText.getadd,
            style: MyTextStyles.sora5(
              fontsize: 26.sp,
              color: AppColors.primaryText,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetAdditionalCardWidget(
                title: MyText.compSignupGetAdditionalCardsPhysicalCard,
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Plasticcard()));
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              GetAdditionalCardWidget(
                title: MyText.compSignupGetAdditionalCardsVirtualCard,
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Plasticcard()));
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  MyText.alreadyetbcard,
                  style: MyTextStyles.workfont(
                      fontsize: 12.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
