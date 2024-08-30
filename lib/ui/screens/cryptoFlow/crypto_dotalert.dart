import 'package:et_bank/controllers/crypto_flow/crypto_dot_alert_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_dotpricealert_loading.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_buy_dot_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CryptoDotAlert extends StatefulWidget {
  CryptoDotAlert({super.key});

  @override
  State<CryptoDotAlert> createState() => _CryptoDotAlertState();
}

class _CryptoDotAlertState extends State<CryptoDotAlert> {
  CryptoDotAlertController controller = Get.put(CryptoDotAlertController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 45.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.DOTAlert,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.soraFamily),
                              ),
                              Row(
                                children: [
                                  Text(
                                    MyText.Alerttriggerwhen1DOTequals,
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                ],
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
                height: 32.h,
              ),
              CryptoBuyDotWidget(
                value: controller.selectedCurrency.value,
                onChanged: (value) {
                  controller.changeSelectedCurrency(value!);
                },
                gbpText: MyText.gbp,
                hintText: '0',
                balanceText: MyText.Current1DOT,
                containerColor: AppColors.greyBox,
                maxLimit: 88,
                exceededColor: AppColors.red,
                feeText: '12.32% decrease',
                textFieldOnchanged: (value) {
                  controller.currencyValue.value = int.parse(value! );
                },
                prefixIcon: Text(
                  "\$",
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                textFieldWidth: 52.w,
              ),
            ],
          ),
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
                            color: controller.buttonColor(),
                            text: Text(
                              MyText.Createalert,
                              style: TextStyle(
                                  color: controller.buttonTextColor(),
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              showDotPriceAlertLoading(context);
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
