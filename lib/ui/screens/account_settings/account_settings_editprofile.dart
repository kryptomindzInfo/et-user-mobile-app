import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/white_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountSettingsEditProfile extends StatefulWidget {
  const AccountSettingsEditProfile({super.key});

  @override
  State<AccountSettingsEditProfile> createState() =>
      _AccountSettingsEditProfileState();
}

class _AccountSettingsEditProfileState
    extends State<AccountSettingsEditProfile> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
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
                      width: 16,
                    ),
                    Text(
                      MyText.EditProfile,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 18, 0),
                      child: Stack(
                        children: [
                          Image.asset(AppAssets.editprofile_pic),
                          Positioned(
                              right: 1,
                              bottom: 1,
                              child: Image.asset(AppAssets.camera_icon)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.PersonalDetails,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.name,
                initialValue: MyText.nameAlina,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.userNameText,
                initialValue: MyText.userName,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.DOBText,
                initialValue: MyText.DOB,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.residentialAddressText,
                initialValue: MyText.residentialAddress,
                height: 120.h,
                textfieldheight: 80,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.phoneNoText,
                initialValue: MyText.phoneNo,
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.emailText,
                initialValue: MyText.email,
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.red_sign_icon,
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      MyText.verifyEmail,
                      style: TextStyle(
                          color: AppColors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                children: [
                  Text(
                    MyText.AdditionalInformation,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              WhiteTextFieldWidget(
                title: MyText.taxResidences,
                initialValue: MyText.UnitedKingdom,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
