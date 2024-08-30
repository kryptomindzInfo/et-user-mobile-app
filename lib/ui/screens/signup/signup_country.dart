import 'package:et_bank/controllers/signup/signup_country_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/countries_list.dart';
import 'package:et_bank/global/widgets/button_widget.dart';

import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/signup/signup_name.dart';
import 'package:et_bank/ui/screens/signup/widgets/signup_country_richText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignupCountry extends StatefulWidget {
  SignupCountry({super.key});

  @override
  State<SignupCountry> createState() => _SignupCountryState();
}

class _SignupCountryState extends State<SignupCountry> {
  final CountryController countryController = Get.put(CountryController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 54,
                      right: 54,
                    ),
                    child: InkWell(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 54),
                    child: Image.asset(
                      AppAssets.etbankLogo,
                      height: 51.h,
                      width: 188.w,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              Text(
                MyText.signupCountryTitle,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Sora'),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                MyText.signupCountrysubTitle,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                        child: InputDecorator(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8, right: 15),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: AppColors.greyText2,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        // height: 20.h,
                        child: DropdownButton<String>(
                          menuMaxHeight: 300,
                          isExpanded: true,
                          hint: Text(
                            'Country',
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          icon: Image.asset(
                            AppAssets.icon_down_white,
                            width: 20.w,
                            height: 10.h,
                            color: AppColors.greyText2,
                          ),
                          value:
                              countryController.selectedCountry.value.isNotEmpty
                                  ? countryController.selectedCountry.value
                                  : null,
                          style: TextStyle(
                            color: AppColors.primaryText,
                          ),
                          underline: const SizedBox(),
                          borderRadius: BorderRadius.circular(4),
                          dropdownColor: AppColors.greyBox,
                          items: allCountries.map((Countries country) {
                            return DropdownMenuItem<String>(
                              value: country.name,
                              child: Row(
                                children: <Widget>[
                                  Text(country.flag),
                                  SizedBox(width: 10),
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
              ),
              SizedBox(
                height: 311.h,
              ),
              Center(child: SignupCountryRichText()),
              SizedBox(
                height: 49.h,
              ),
              Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327,
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: const Text(
                        MyText.signupCountrySignup,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupName()));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
