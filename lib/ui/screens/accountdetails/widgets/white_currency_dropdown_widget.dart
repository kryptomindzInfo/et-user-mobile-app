import 'package:et_bank/controllers/accountDetails_Flow/accountDetails_country_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WhiteCurrencyDropDownWidget extends StatefulWidget {
  WhiteCurrencyDropDownWidget(
      {super.key,
      this.title,
      this.initialValue,
      this.height,
      this.textfieldheight,
      this.hintText,
      this.hintTextStyle});

  String? title;
  String? initialValue;
  String? hintText;
  TextStyle? hintTextStyle;
  double? height;
  double? textfieldheight;

  @override
  State<WhiteCurrencyDropDownWidget> createState() => _WhiteCurrencyDropDownWidgetState();
}

class _WhiteCurrencyDropDownWidgetState extends State<WhiteCurrencyDropDownWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  List currenciesList = [
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency1,
      'subtitle': MyText.currencyshort1,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency2,
      'subtitle': MyText.currencyshort2,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency3,
      'subtitle': MyText.currencyshort3,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency4,
      'subtitle': MyText.currencyshort4,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency5,
      'subtitle': MyText.currencyshort5,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency6,
      'subtitle': MyText.currencyshort6,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency7,
      'subtitle': MyText.currencyshort7,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency8,
      'subtitle': MyText.currencyshort8,
    },
  ];

  List<String> currencies = ['usd', 'qwe'];

  final AccountDetailsCountryController currencyController =
      Get.put(AccountDetailsCountryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: widget.height ?? 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.whiteBox4,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title ?? '',
              style: MyTextStyles.workfont(
                fontsize: 12.sp,
                color: AppColors.greyBox,
                fontWeight: FontWeight.w400,
              ),
            ),
            Obx(() {
              return Row(
                children: [
                  Expanded(
                    child: SizedBox(
                        child: SizedBox(
                      height: 30.h,
                      child: DropdownButton<String>(
                        menuMaxHeight: 300,
                        isExpanded: true,
                        hint: Text(
                          'Country',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'WorkSans'),
                        ),
                        icon: Image.asset(
                          height: 11.h,
                          width: 22.h,
                          AppAssets.icon_arrow_down,
                          color: themeController.bgColor.value,
                        ),
                        value: currencyController.selectedCurrency.value,
                        style: TextStyle(color: themeController.bgColor.value),
                        underline: const SizedBox(),
                        borderRadius: BorderRadius.circular(4),
                        dropdownColor: AppColors.grey,
                        items: <String>[
                          'AUD',
                          'USD',
                          'CAD',
                          'BGN',
                          'CLP',
                          'COP'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          currencyController.changeSelectedCurrency(value!);
                        },
                      ),
                    )),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
