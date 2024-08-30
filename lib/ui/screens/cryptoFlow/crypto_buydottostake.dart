import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_buydot.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());

void showBuyDotToStockModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 310.h,
        width: 390.w,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 11.0, left: 41, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(),
              SizedBox(
                height: 56.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    MyText.BuyDOTtostake,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                MyText.YoudonthaveDOTavailable,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 32.h,
              ),
              ButtonWidget(
                  color: AppColors.primaryButton,
                  text: const Text(
                    MyText.continu,
                    style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BuyCryptoBuyDot()));
                  }),
            ],
          ),
        ),
      );
    },
  );
}
