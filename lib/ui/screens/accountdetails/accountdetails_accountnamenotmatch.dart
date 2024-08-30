import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_loading.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

AccountNamenotMatch(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: AppColors.buttongrey,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            color: AppColors.greyBox,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 788.h,
        width: 390.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 54),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 190.h,
              ),
              Center(
                child: Image.asset(
                  AppAssets.notmatch_icon,
                  height: 110.h,
                  width: 256.w,
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: Text(
                  MyText.Accountnamenotmatch,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                MyText.Accountnamenotmatchsubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.greyText2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: MyTextStyles.worksansFamily),
              ),
              SizedBox(
                height: 93.h,
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.primaryButton,
                          text:  Text(
                            MyText.EditAccountdetails,
                            style: TextStyle(
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                color: AppColors.btnText,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            AccountDetailsLoading(context);
                          }),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        boxShadow: [
                          BoxShadow(color: AppColors.primaryButton, spreadRadius: 1),
                        ],
                      ),
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                          color: AppColors.greyBox,
                          text: Text(
                            MyText.Copyemail,
                            style: TextStyle(
                                color: AppColors.greenText,
                                fontFamily: MyTextStyles.worksansFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            AccountDetailsLoading(context);
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
