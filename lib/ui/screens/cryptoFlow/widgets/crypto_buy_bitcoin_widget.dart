import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_discover_crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class CryptoBuyBitCoinWidget extends StatefulWidget {
  @override
  State<CryptoBuyBitCoinWidget> createState() => _CryptoBuyBitCoinWidgetState();
}

class _CryptoBuyBitCoinWidgetState extends State<CryptoBuyBitCoinWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.r),
        color: AppColors.greyBox2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 349.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
              // color: AppColors.buttongrey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greenBox,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21.r),
                      topRight: Radius.circular(21.r),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.close,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 140.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.BuyBitcoinandmore,
                                style: MyTextStyles.sora(
                                  fontsize: 32.sp,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        Text(
                          MyText.Goingthroughcrypto,
                          style: MyTextStyles.workfont(
                              fontsize: 14.sp,
                              color: AppColors.greyText3,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(
                              DiscoverCryptoinApp(),
                            );
                          },
                          child: Container(
                            width: 82.w,
                            height: 39.h,
                            decoration: BoxDecoration(
                              color: AppColors.yellowButton2,
                              borderRadius: BorderRadius.circular(70.r),
                            ),
                            child: Center(
                                child: Text(
                              MyText.linkstart,
                              style: MyTextStyles.workfont(
                                  fontsize: 16.sp,
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
