import 'package:et_bank/controllers/settings/settings_spendinglimit_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SettingsSpendingLimit extends StatefulWidget {
  SettingsSpendingLimit({super.key});

  @override
  State<SettingsSpendingLimit> createState() => _SettingsSpendingLimitState();
}

class _SettingsSpendingLimitState extends State<SettingsSpendingLimit> {
  final ThemeController themeController = Get.put(ThemeController());

  SpendingLimitController spendingLimitController =
      Get.put(SpendingLimitController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // floatingActionButton: ThemeButton(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 65.0, left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                            width: 16,
                          ),
                          Text(
                            MyText.Spendinglimit,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                        ],
                      ),
                      Text(
                        MyText.SpendinglimitsubTitle,
                        style: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                InkWell(
                  onTap: () {},
                  child: YourPlanFreeTrial(
                    image:  AppAssets.card_icon_black ,
                    color: AppColors.greyBox,
                    title: MyText.Standard7560,
                    paddingbwTitleandSubTitle: 0,
                    subTitle: MyText.Visa,
                    textColor: AppColors.primaryText,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyBox,
                      borderRadius: BorderRadius.circular(20)),
                  height: 480.h,
                  width: 350.w,
                  child: Column(
                    children: [
                      YourPlanFreeTrial(
                        image: AppAssets.spendinglimit_icon,
                        color: AppColors.greyBox,
                        title: MyText.CardSpendinglimit,
                        subTitle: MyText.Thespendandwithdrawl,
                        textColor: AppColors.primaryText,
                        switchbutton: true,
                        switchvalue:
                            spendingLimitController.cardSpendingLimit.value,
                        switchOnchanged: (value) {
                          spendingLimitController.setcardSpendingLimit();
                        },
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Container(
                        height: 300,
                        child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(
                            startAngle: 120,
                            endAngle: 60,
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                positionFactor: 0.4,
                                angle: 90,
                                widget: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      spendingLimitController
                                                  .cardSpendingLimit ==
                                              false
                                          ? MyText.amount
                                          : MyText.amount100,
                                      style: TextStyle(
                                          color: spendingLimitController
                                                      .cardSpendingLimit ==
                                                  false
                                              ? AppColors.greyText2
                                              : AppColors.primaryText,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: MyTextStyles.soraFamily),
                                    ),
                                    Text(
                                      MyText.spentthismonth,
                                      style: TextStyle(
                                          color: AppColors
                                              .greyText2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    SizedBox(
                                      height: 100.h,
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          spendingLimitController
                                                      .cardSpendingLimit ==
                                                  false
                                              ? AppAssets.grey_card
                                              : AppAssets.green_card,
                                          width: 27.w,
                                          height: 18.h,
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Text(
                                          spendingLimitController
                                                      .cardSpendingLimit ==
                                                  false
                                              ? MyText.Limitistoggledoff
                                              : MyText.Limitistoggledon,
                                          style: TextStyle(
                                              color: AppColors
                                                  .greyText2,
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
                            minimum: 20,
                            maximum: 100,
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: AxisLineStyle(
                              thickness: 8,
                              cornerStyle: CornerStyle.bothCurve,
                              color: AppColors.greyText2,
                              thicknessUnit: GaugeSizeUnit.logicalPixel,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                value:
                                    spendingLimitController.cardSpendingLimit ==
                                            false
                                        ? 0.0
                                        : 40,
                                cornerStyle: CornerStyle.bothCurve,
                                color: AppColors.greenText,
                                width: 8,
                                sizeUnit: GaugeSizeUnit.logicalPixel,
                              )
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
