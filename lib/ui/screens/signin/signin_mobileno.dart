import 'package:et_bank/controllers/signup/signup_country_controller.dart';
import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/countries_list.dart';

import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';

import 'package:et_bank/ui/screens/signin/widgets/signin_bottom_appbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SignInMobileNo extends StatefulWidget {
  SignInMobileNo({super.key});

  @override
  State<SignInMobileNo> createState() => _SignInMobileNoState();
}

class _SignInMobileNoState extends State<SignInMobileNo> {
  final CountryController countryController = Get.put(CountryController());

  SigninMobileNoController signinMobileNoController =
      Get.put(SigninMobileNoController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 54, right: 54),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          AppAssets.leftarrow,
                          width: 25.12.w,
                          height: 17.94.h,
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
                  MyText.signInMobileTitle,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Sora'),
                ),
                SizedBox(
                  height: 48.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: SizedBox(
                        width: 80.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                  child: InputDecorator(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 4, right: 4),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    borderSide: BorderSide(
                                      color: AppColors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: SizedBox(
                                  height: 50.h,
                                  child: DropdownButton<String>(
                                    menuMaxHeight: 300,
                                    isExpanded: true,
                                    hint: Text(
                                      'Country',
                                      style: TextStyle(
                                          color: AppColors.lightGreyText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'WorkSans'),
                                    ),
                                    icon: Visibility(
                                      visible: false,
                                      child: Icon(
                                        Icons.arrow_back,
                                      ),
                                    ),
                                    value: countryController
                                            .selectedCountry.value.isEmpty
                                        ? null
                                        : countryController
                                            .selectedCountry.value,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                    ),
                                    underline: const SizedBox(),
                                    borderRadius: BorderRadius.circular(4),
                                    dropdownColor: AppColors.greyBox,
                                    items:
                                        allCountries.map((Countries country) {
                                      return DropdownMenuItem<String>(
                                        value: country.name,
                                        child: Row(
                                          children: <Widget>[
                                            Text(country.flag),
                                            SizedBox(width: 4),
                                            Text(country.dialCode),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      countryController
                                          .changeSelectedCountry(value!);
                                    },
                                  ),
                                ),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 14.w),
                    Expanded(
                      child: SizedBox(
                        child: TextFieldWidget(
                          style: TextStyle(color: AppColors.primaryText),
                          onChanged: (value) {
                            signinMobileNoController.mobileNo.value = value;
                          },
                          hintText: MyText.signInMobilehintText,
                          hintStyle: TextStyle(
                            color: AppColors.lightGreyText,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        MyText.signInMobilelostPhoneNo,
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.greenText,
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              height: 275.h,
              color: themeController.bgColor.value,
              child: SignInBottomAppBar(),
            ),
          );
        }),
      ),
    );
  }
}
