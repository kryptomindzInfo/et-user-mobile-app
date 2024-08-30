import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_code.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountDetailsPayee extends StatefulWidget {
  AccountDetailsPayee({super.key});

  @override
  State<AccountDetailsPayee> createState() => _AccountDetailsPayeeState();
}

class _AccountDetailsPayeeState extends State<AccountDetailsPayee> {
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
                height: 16.h,
              ),

              // First Contianer

              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                height: 210.h,
                width: 349.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(22, 20, 33, 22),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.trustPayee,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Image.asset(AppAssets.trustpayee_icon),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        MyText.trustPayeeDetailText,
                        style: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Second Contianer

              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                width: 349.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.To,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Row(
                            children: [
                              Image.asset(AppAssets.green_exlcam_icon,color: AppColors.greenText,),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                MyText.AlinaJames,
                                style: TextStyle(
                                    color: AppColors.greenText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Accountnumber,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.accno802,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Third Contianer

              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                width: 349.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Reference,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Row(
                            children: [
                              Image.asset(AppAssets.green_pencil_icon,color: AppColors.greenText,),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                MyText.edit,
                                style: TextStyle(
                                    color: AppColors.greenText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        MyText.SentfromETBank,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Fourth Contianer

              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                width: 349.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyText.Recipientgets,
                        style: TextStyle(
                            color: AppColors.greyText2,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Fees,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.Nofees,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Yourtotal,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.amount,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Fifth Contianer

              Container(
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(20)),
                width: 349.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Estimatedarrival,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.Usuallyinseconds,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: const Text(
                        MyText.send,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountDetailsCode()));
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
