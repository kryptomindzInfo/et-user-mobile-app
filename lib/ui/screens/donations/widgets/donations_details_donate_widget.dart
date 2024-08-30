import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/donations/donations_charitiesgetall.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationsDetailsDonateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.greyBox,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 390.w,
                  decoration: BoxDecoration(
                    color: themeController.bgColor.value,
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        AppAssets.donation_details,
                        fit: BoxFit.fill,
                        height: 390.h,
                        width: 390.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 00.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      child: Image.asset(AppAssets.leftarrow),
                                      height: 30.h,
                                      width: 30.w,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70.h,
                                  ),
                                  Image.asset(
                                    AppAssets.cancer,
                                    height: 54.h,
                                    width: 54.w,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    MyText.CancerResearchUK,
                                    style: TextStyle(
                                        color: AppColors.greyText2,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    MyText.amount,
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: MyTextStyles.soraFamily),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    width: 115.w,
                                    child: ButtonWidget(
                                        color: AppColors.yellowButton,
                                        text: Text(
                                          MyText.Donatepl,
                                          style: TextStyle(
                                              color:
                                                  AppColors.primaryText,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily:
                                                  MyTextStyles.worksansFamily),
                                        ),
                                        onPressed: () {
                                          charitiesGetAll(context);
                                        }),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
