import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_date.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_payee.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/accountdetails_gbp_widget.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/accountdetails_reference_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountDetailsGBP extends StatefulWidget {
  AccountDetailsGBP({super.key});

  @override
  State<AccountDetailsGBP> createState() => _AccountDetailsGBPState();
}

class _AccountDetailsGBPState extends State<AccountDetailsGBP> {
  final ThemeController themeController = Get.put(ThemeController());
  AccountDetailsFlowAccountDetailsController controller =
      Get.put(AccountDetailsFlowAccountDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
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
                    Column(
                      children: [
                        Text(
                          MyText.AlinaJames,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        Text(
                          MyText.date,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                    Image.asset(AppAssets.editprofile_pic)
                  ],
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
              AccountDetailsGBPWidget(
                gbpText: MyText.gbp,
                hintText: MyText.amount,
                balanceText: MyText.bal,
                containerColor: AppColors.greyBox,
                maxLimit: 88,
                exceededColor: AppColors.red,
                feeText: MyText.Nofees,
              ),
              SizedBox(
                height: 16.h,
              ),
              ReferenceWidget(
                text1: MyText.Reference,
                text2: MyText.SentfromETBank,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          MyText.Arriving,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          MyText.Today,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 48.h,
                            width: 80.w,
                            child: ButtonWidget(
                                color: AppColors.primaryButton,
                                text: Image.asset(AppAssets.card_icon_black),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AccountDetailsDate()));
                                }),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          SizedBox(
                            height: 48.h,
                            width: 226.w,
                            child: ButtonWidget(
                                color: AppColors.primaryButton,
                                text: const Text(
                                  MyText.continu,
                                  style: TextStyle(
                                      fontFamily: MyTextStyles.worksansFamily,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             AccountDetailsDate()));

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AccountDetailsPayee()));
                                }),
                          ),
                        ],
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
