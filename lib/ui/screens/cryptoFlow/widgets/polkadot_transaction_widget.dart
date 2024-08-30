import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_transactiondetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class PolkaDotTransactionWidget extends StatefulWidget {

  const PolkaDotTransactionWidget({super.key});

  @override
  State<PolkaDotTransactionWidget> createState() => _PolkaDotTransactionWidgetState();
}

class _PolkaDotTransactionWidgetState extends State<PolkaDotTransactionWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          Container(
            width: 349.w,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(26, 31, 31, 31),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.trans_clock,
                    height: 29.h,
                    width: 29.w,
                  ),
                  SizedBox(
                    width: 26.w,
                  ),
                  Text(
                    MyText.Notransactionyet,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyText.Todaytc,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: MyTextStyles.soraFamily),
              ),
              Text(
                MyText.todayval,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          InkWell(
            onTap: () {
              buyCryptoTransactionDetails(context);
            },
            child: Container(
              width: 349.w,
              decoration: BoxDecoration(
                color: AppColors.greyBox,
                borderRadius: BorderRadius.circular(28.r),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(13, 23, 13, 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 50,
                          child: Stack(
                            children: [
                              Image.asset(
                                AppAssets.t_uk,
                                height: 36.h,
                                width: 36.w,
                              ),
                              Positioned(
                                left: 14,
                                top: 14,
                                child: Image.asset(
                                  AppAssets.DOT,
                                  height: 36.h,
                                  width: 36.w,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 26.w,
                        // ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: Text(
                            MyText.a1434,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          MyText.todayval,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        Text(
                          MyText.n2p,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
