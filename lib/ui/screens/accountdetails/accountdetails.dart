import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/white_textfield_widget.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_accountnamenotmatch.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/white_currency_dropdown_widget.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/white_dropdown_button.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountDetailsFlowAccountDetails extends StatefulWidget {
  AccountDetailsFlowAccountDetails({super.key});

  @override
  State<AccountDetailsFlowAccountDetails> createState() =>
      _AccountDetailsFlowAccountDetailsState();
}

class _AccountDetailsFlowAccountDetailsState
    extends State<AccountDetailsFlowAccountDetails> {
  AccountDetailsFlowAccountDetailsController controller =
      Get.put(AccountDetailsFlowAccountDetailsController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Row(
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
                        width: 20.w,
                      ),
                      Text(
                        MyText.Accountdetails,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.inActiveTabButtons1,
                      borderRadius: BorderRadius.circular(48)),
                  height: 43.h,
                  width: 349.w,
                  child: Row(
                    children: [
                      Container(
                        height: 43.h,
                        width: 175.w,
                        child: ButtonWidget(
                            color: controller.getindividualButtonColor(),
                            text: Text(
                              MyText.Individual,
                              style: TextStyle(
                                  color:
                                      controller.getindividualButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Work Sans'),
                            ),
                            onPressed: () {
                              controller.setindividualValue(true);
                            }),
                      ),
                      Container(
                        height: 43.h,
                        width: 173.w,
                        child: ButtonWidget(
                            color: controller.getbuisnessButtonColor(),
                            text: Text(
                              MyText.Business,
                              style: TextStyle(
                                  color:
                                      controller.getbuisnessButtonTextColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                            onPressed: () {
                              controller.setindividualValue(false);
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                WhiteCountryDropDownWidget(
                  height: 65.h,
                  title: MyText.Countryofrecipientsbank,
                  hintText: MyText.UnitedKingdom,
                ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteCurrencyDropDownWidget(
                  height: 65.h,
                  title: MyText.Currency,
                  hintText: MyText.BritishPound,
                ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteTextFieldWidget(
                  title: MyText.Sortcode,
                  hintText: MyText.hasheswithdashes,
                ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteTextFieldWidget(
                  title: MyText.Accountnumber,
                  hintText: MyText.hashes,
                  onChanged: (value) {
                    if (value.contains('#')) {
                      controller.setaccountNoValidate(false);
                    } else {
                      controller.setaccountNoValidate(true);
                    }
                  },
                ),
                controller.accountNoValidate.value == true
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              AppAssets.red_sign_icon,
                              height: 15.h,
                              width: 15.w,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              MyText.AccountnoValidationText,
                              style: TextStyle(
                                  color: AppColors.red,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteTextFieldWidget(
                  title: MyText.Firstnameandmiddlename,
                  hintText: MyText.hashes,
                ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteTextFieldWidget(
                  title: MyText.Lastname,
                  hintText: MyText.hashes,
                ),
                SizedBox(
                  height: 16.h,
                ),
                WhiteTextFieldWidget(
                  title: MyText.Email,
                  hintText: MyText.hashes,
                ),
                Text(
                  MyText.Optional,
                  style: TextStyle(
                      color: AppColors.greyText2,
                      fontFamily: MyTextStyles.worksansFamily,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
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
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: Text(
                        MyText.Addrecipient,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            color: AppColors.btnText,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        AccountNamenotMatch(context);
                      }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
