import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TransactionDetailsStatusWidget extends StatefulWidget {

  const TransactionDetailsStatusWidget({super.key});

  @override
  State<TransactionDetailsStatusWidget> createState() => _TransactionDetailsStatusWidgetState();
}

class _TransactionDetailsStatusWidgetState extends State<TransactionDetailsStatusWidget> {
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
                    MyText.Status,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    MyText.Amountval,
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
                  Text(
                    MyText.oneDOT45764,
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
                    MyText.Spent,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    MyText.n2p,
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
                    MyText.Bought,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    MyText.todayval,
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
                    MyText.FeesT,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Text(
                    MyText.Feesval,
                    style: TextStyle(
                        color: AppColors.primary,
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
                    MyText.statement,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.download_icon,
                        height: 10.h,
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        MyText.Download,
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
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
