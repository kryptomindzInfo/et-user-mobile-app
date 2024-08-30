import 'package:et_bank/controllers/crypto_flow/crypto_buy_dot_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_awareofrisks.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/stakedot_blackcontainer_widget.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/widgets/stakedot_white_container.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyCryptoStakeDot extends StatefulWidget {
  BuyCryptoStakeDot({super.key});

  @override
  State<BuyCryptoStakeDot> createState() => _BuyCryptoStakeDotState();
}

class _BuyCryptoStakeDotState extends State<BuyCryptoStakeDot> {
  final ThemeController themeController = Get.put(ThemeController());

  CryptoBuyDotController controller = Get.put(CryptoBuyDotController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 45.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Obx(() {
            return Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  AppAssets.leftarrow,
                                  width: 25.12.w,
                                  height: 17.94.h,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Column(
                                  children: [
                                    Text(
                                      MyText.StakeDOT,
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: MyTextStyles.soraFamily),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    StakeDotBlackContainerWidget(
                      value: controller.selectedCurrency1.value,
                      onChanged: (value) {
                        controller.changeSelectedCurrency1(value!);
                      },
                      gbpText: MyText.gbp,
                      hintText: '+0',
                      balanceText: MyText.bal,
                      containerColor: AppColors.greyBox,
                      maxLimit: 88,
                      exceededColor: AppColors.red,
                      feeText: '£0',
                    ),
                    StakeDotWhiteContainerWidget(
                      value: controller.selectedCurrency2.value,
                      onChanged: (value) {
                        controller.changeSelectedCurrency2(value!);
                      },
                      gbpText: MyText.gbp,
                      hintText: '0 DOT',
                      balanceText: MyText.bal,
                      containerColor: AppColors.greenBox,
                      maxLimit: 88,
                      exceededColor: AppColors.red,
                      feeText: '£0',
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              height: 120,
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: AppColors.primary,
                            text: const Text(
                              MyText.Confirm,
                              style: TextStyle(
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              awareOfRisksBottomSheet(context);
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
