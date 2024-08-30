import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TransactionDetailsReportIsuueWidget extends StatefulWidget {
  const TransactionDetailsReportIsuueWidget({super.key});

  @override
  State<TransactionDetailsReportIsuueWidget> createState() =>
      _TransactionDetailsReportIsuueWidgetState();
}

class _TransactionDetailsReportIsuueWidgetState
    extends State<TransactionDetailsReportIsuueWidget> {
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
                const EdgeInsets.only(left: 20, top: 33, right: 32, bottom: 33),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.Reportanissue,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  Image.asset(
                    AppAssets.rightarrow,
                    color: AppColors.primaryText,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
