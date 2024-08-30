import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Esim_Dashboard/esim_overview.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_aboutus.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_yourplan.dart';
import 'package:et_bank/ui/screens/account_settings/accountsettings_accounts.dart';
import 'package:et_bank/ui/screens/account_settings/accountsettings_appsettings.dart';
import 'package:et_bank/ui/screens/account_settings/accountsettings_securityandprivacy.dart';
import 'package:et_bank/ui/widgets/regularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profilesetting extends StatefulWidget {
  @override
  State<profilesetting> createState() => _profilesettingState();
}

class _profilesettingState extends State<profilesetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 349.w,
      // height: 333.h,
      decoration: BoxDecoration(
        color: AppColors.greyBox,
        borderRadius: BorderRadius.circular(28.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingsYourPlan()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.diamond,
              ),
              title: Text(
                MyText.p,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
              subtitle: Text(
                MyText.Standard,
                style: MyTextStyles.worknormal(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Esimdashboardoverveiw()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.esim_icon,
              ),
              title: Text(
                MyText.Esim,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
              subtitle: Text(
                '+987654345678',
                style: MyTextStyles.worknormal(
                  fontsize: 14.sp,
                  color: AppColors.greyText2,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingsAccounts()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.union,
              ),
              title: Text(
                MyText.acc,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
              subtitle: Text(
                MyText.verifyemail,
                style: MyTextStyles.worknormal(
                  fontsize: 14.sp,
                  color: AppColors.red,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AccountSettingsSecurityAndPrivacy()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.security,
              ),
              title: Text(
                MyText.privacy,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingsAppSettings()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.iconsetting,
              ),
              title: Text(
                MyText.app,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingsAboutus()));
              },
              dense: true,
              leading: RegularIcons(
                image: AppAssets.logo,
              ),
              title: Text(
                MyText.about,
                style: MyTextStyles.worknormal(
                  fontsize: 16.sp,
                  color: AppColors.primaryText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
