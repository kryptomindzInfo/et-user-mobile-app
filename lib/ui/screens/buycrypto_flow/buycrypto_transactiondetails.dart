import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_selldot.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/buycrypto_transactiondetails_statement_widget.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/buycrypto_transactiondetails_status_widget.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/transactiondetails_reportissue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());

void buyCryptoTransactionDetails(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
              // color: AppColors.greyBox,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 800.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 22.0, left: 20, right: 20, bottom: 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.todayval,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Container(
                        width: 50.w,
                        height: 50.h,
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
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        MyText.gbp,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(AppAssets.white_arrow_forward,color: AppColors.primaryText,),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        MyText.DOT,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                  Text(
                    MyText.Momentsago,
                    style: TextStyle(
                        color: AppColors.greyText2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: MyTextStyles.worksansFamily),
                  ),

                  // First Container

                  SizedBox(
                    height: 24,
                  ),
                  TransactionDetailsStatusWidget(),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BuyCryptoSellDot()));
                      },
                      child: TransactionDetailsStatementWidget()),
                  SizedBox(
                    height: 16,
                  ),
                  TransactionDetailsReportIsuueWidget(),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
