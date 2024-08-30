import 'package:et_bank/controllers/Donations/donations_details_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/donations/donations_onetime_donation.dart';
import 'package:et_bank/ui/screens/donations/widgets/donations_donate_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class DonationsDonate extends StatefulWidget {
  DonationsDonate({super.key});

  @override
  State<DonationsDonate> createState() => _DonationsDonateState();
}

class _DonationsDonateState extends State<DonationsDonate> {
  DonationsDetailsController controller = Get.put(DonationsDetailsController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
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
              ],
            ),
          ),
          title: Text(
            MyText.Donate,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBarWidget(
                  hintText: "Home",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 135.w,
                      child: ButtonWidget(
                          color: AppColors.yellowButton,
                          text: Row(
                            children: [
                              Image.asset(
                                AppAssets.charities,
                                height: 19.h,
                                width: 19.w,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                MyText.Charities,
                                style: TextStyle(
                                    color: themeController.bgColor.value,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      width: 165.w,
                      child: ButtonWidget(
                          color: AppColors.greyBox,
                          text: Row(
                            children: [
                              Image.asset(
                                AppAssets.contribution,
                                height: 19.h,
                                width: 19.w,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                MyText.Contribution,
                                style: TextStyle(
                                    color: AppColors.greyText2,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Obx(() {
                  return Container(
                    width: 349.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: AppColors.greyBox,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DonationsOneTime()));
                          },
                          child: AccountsWidget(
                            image: AppAssets.onetime_donation,
                            color: AppColors.greyBox,
                            title: MyText.Onetimedonation,
                            textColor: AppColors.primaryText,
                          ),
                        ),
                        DonationsDonateWidget(
                          image: AppAssets.spare_change,
                          color: AppColors.greyBox,
                          title: MyText.Sparechange,
                          textColor: AppColors.primaryText,
                          switchbutton: true,
                          switchvalue: controller.spareChange.value,
                          switchOnchanged: (value) {
                            controller.toggleSpareChange();
                          },
                        ),
                        DonationsDonateWidget(
                          image: AppAssets.recurring_donation,
                          color: AppColors.greyBox,
                          title: MyText.Recurringdonation,
                          textColor: AppColors.primaryText,
                          switchbutton: true,
                          switchvalue: controller.recurringDonation.value,
                          switchOnchanged: (value) {
                            controller.toggleRecurringDonation();
                          },
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
