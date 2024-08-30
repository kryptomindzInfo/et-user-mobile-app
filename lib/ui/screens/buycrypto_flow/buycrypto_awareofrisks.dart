import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_staked_success_loading.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void awareOfRisksBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            // color: AppColors.buttongrey,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 410.h,
        width: 390.w,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 11.0, left: 41, right: 40, bottom: 15),
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
                  Container(
                    width: 240.w,
                    child: Text(
                      MyText.Areyouawareoftherisks,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ),
                  Image.asset(
                    AppAssets.aware_risks,
                    width: 47.w,
                    height: 40.h,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                MyText.Yourbalancerequires29days,
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
                    MyText.Nogoback,
                    style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: 16.h,
              ),
              ButtonWidget(
                  color: AppColors.disableButton,
                  text: const Text(
                    MyText.Yescontinue,
                    style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    buyCryptoStakedSuccessfulLoading(context);
                  }),
            ],
          ),
        ),
      );
    },
  );
}
