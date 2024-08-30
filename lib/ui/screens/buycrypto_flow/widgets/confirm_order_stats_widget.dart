import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ConfirmOrderStatsWidget extends StatefulWidget {

  ConfirmOrderStatsWidget(
      {super.key,
      this.amountval,
      this.priceval,
      this.noofshare,
      this.DayTradesleft,
      this.Estimatedtotalproceed,
      this.exchangeval,
      this.feesval,
      this.estimatedTotalProceedVal});

  String? amountval;
  String? priceval;
  String? noofshare;
  String? DayTradesleft;
  String? Estimatedtotalproceed;
  String? exchangeval;
  String? feesval;
  String? estimatedTotalProceedVal;

  @override
  State<ConfirmOrderStatsWidget> createState() => _ConfirmOrderStatsWidgetState();
}

class _ConfirmOrderStatsWidgetState extends State<ConfirmOrderStatsWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 350.w,
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 24, right: 14, bottom: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.Amount,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    widget.amountval ?? MyText.Amountval,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.Price,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Row(
                    children: [
                      Image.asset(AppAssets.buyicon),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.priceval ?? MyText.oneDOT45764,
                        style: TextStyle(
                            color: AppColors.greenText,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.noofshare??MyText.Exchanged,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    widget.exchangeval ?? MyText.Exchangedval,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.DayTradesleft??MyText.FeesT,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    widget.feesval ?? MyText.Feesval,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.Estimatedtotalproceed,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    widget.estimatedTotalProceedVal ?? MyText.Estimatedtotalproceedval,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
