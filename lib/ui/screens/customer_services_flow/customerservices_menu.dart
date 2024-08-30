import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/accounts_widget.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/screens/customer_services_flow/customer_services_message.dart';
import 'package:et_bank/ui/screens/customer_services_flow/customerservices_FAQs.dart';
import 'package:et_bank/ui/widgets/circularIcons.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CustomerServicesMenu extends StatefulWidget {
  const CustomerServicesMenu({super.key});

  @override
  State<CustomerServicesMenu> createState() => _CustomerServicesMenuState();
}

class _CustomerServicesMenuState extends State<CustomerServicesMenu> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
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
            centerTitle: true,
            title: Text(
              MyText.CustomerServices,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
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
                Text(
                  MyText.CallUs,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 349.w,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(19, 24, 19, 23),
                    child: Row(
                      children: [
                        CircularIcons(
                          color: AppColors.primaryButton,
                          image: AppAssets.call,
                        ),
                        SizedBox(
                          width: 23.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MyText.a12345678910,
                              style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: MyTextStyles.soraFamily),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Text(
                              MyText.MonFr7am10pm,
                              style: TextStyle(
                                  color: AppColors.greyText2,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: MyTextStyles.worksansFamily),
                            ),
                            Text(
                              MyText.SatSun6am10pm,
                              style: TextStyle(
                                  color: AppColors.greyText2,
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
                  height: 32.h,
                ),
                Text(
                  MyText.FAQ,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Get.to(CustomerServicesFAQs());
                  },
                  child: AccountsWidget(
                    image: AppAssets.faq,
                    color: AppColors.greyBox,
                    title: MyText.Findintelligentanswersinstantly,
                    textColor: AppColors.primaryText,
                    imageheight: 43.h,
                    imagewidth: 43.w,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.MailUs,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    CustomerServiceMessage(context);
                  },
                  child: YourPlanFreeTrial(
                    image: AppAssets.mail,
                    title: MyText.Writetooursupportteam,
                    subTitle: MyText.emailText,
                    color: AppColors.greyBox,
                    textColor: AppColors.primaryText,
                    subTitleColor: AppColors.greyText2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
