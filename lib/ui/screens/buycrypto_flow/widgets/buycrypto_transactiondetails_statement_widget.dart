import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TransactionDetailsStatementWidget extends StatefulWidget {

  const TransactionDetailsStatementWidget({super.key});

  @override
  State<TransactionDetailsStatementWidget> createState() => _TransactionDetailsStatementWidgetState();
}

class _TransactionDetailsStatementWidgetState extends State<TransactionDetailsStatementWidget> {
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
                const EdgeInsets.only(left: 20, top: 33, right: 14, bottom: 33),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.statement,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.green_pencil_icon,
                        height: 10.h,
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        MyText.AddNote,
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
            ]),
          ),
        ),
      ],
    );
  }
}
