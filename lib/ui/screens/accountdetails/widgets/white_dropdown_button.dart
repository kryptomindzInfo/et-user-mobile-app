import 'package:et_bank/controllers/accountDetails_Flow/accountDetails_country_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/countries_list.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WhiteCountryDropDownWidget extends StatefulWidget {

  WhiteCountryDropDownWidget(
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
  State<WhiteCountryDropDownWidget> createState() => _WhiteCountryDropDownWidgetState();
}

class _WhiteCountryDropDownWidgetState extends State<WhiteCountryDropDownWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  final AccountDetailsCountryController countryController =
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
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          underline: SizedBox(),
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
                          value: countryController.selectedCountry.value,
                          style: TextStyle(color: themeController.bgColor.value),
                          borderRadius: BorderRadius.circular(4),
                          dropdownColor: AppColors.grey,
                          items: allCountries.map((Countries country) {
                            return DropdownMenuItem<String>(
                              value: country.name,
                              child: Row(
                                children: <Widget>[
                                  Text(country.name),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            countryController.changeSelectedCountry(value!);
                          },
                        ),
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
