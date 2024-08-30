import 'package:et_bank/controllers/Donations/donations_details_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/donations/widgets/DonationsDetailsPictureWidget.dart';
import 'package:et_bank/ui/screens/donations/widgets/donations_details_donate_widget.dart';
import 'package:et_bank/ui/screens/donations/widgets/donations_donate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class DonationsDetails extends StatefulWidget {
  DonationsDetails({super.key});

  @override
  State<DonationsDetails> createState() => _DonationsDetailsState();
}

class _DonationsDetailsState extends State<DonationsDetails> {
  final ThemeController themeController = Get.put(ThemeController());

  DonationsDetailsController controller = Get.put(DonationsDetailsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                DonationsDetailsDonateWidget(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Regulardonations,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.seeall,
                            style: TextStyle(
                                color: AppColors.greenText,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        width: 349.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: AppColors.greyBox),
                        child: Column(
                          children: [
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
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        MyText.Aboutcharity,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        width: 349.w,
                        decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 17, 28, 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.ETBankhavepartnered,
                                style: TextStyle(
                                    color:
                                        AppColors.greyText2,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                MyText.Seemore,
                                style: TextStyle(
                                    color: AppColors.greenText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        MyText.ETBankusersdonations,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        width: 349.w,
                        decoration: BoxDecoration(
                            color: AppColors.greyBox,
                            borderRadius: BorderRadius.circular(28)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(28, 17, 28, 17),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyText.Totaldonatedamount,
                                style: TextStyle(
                                    color:
                                        AppColors.greyText2,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.soraFamily),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                MyText.a21995541,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.soraFamily),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Moregreatcharities,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          Text(
                            MyText.seeall,
                            style: TextStyle(
                                color: AppColors.greenText,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            DonationDetailsPictureWidget(),
                            SizedBox(
                              width: 16.w,
                            ),
                            DonationDetailsPictureWidget(
                              mainImage: AppAssets.donation_details,
                              logoImage: AppAssets.wikimedia,
                              title: MyText.Wikimedia,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Center(
                        child: Text(
                          MyText.ProvidedbyETBankLTD,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
