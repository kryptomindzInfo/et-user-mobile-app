import 'package:et_bank/controllers/accountDetails_Flow/accountdetails_reviewtransfer_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Transaction.dart';
import 'package:et_bank/ui/screens/homescreens/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class AccountDetailsTransferReivew extends StatefulWidget {
  AccountDetailsTransferReivew({super.key});

  @override
  State<AccountDetailsTransferReivew> createState() =>
      _AccountDetailsTransferReivewState();
}

class _AccountDetailsTransferReivewState
    extends State<AccountDetailsTransferReivew> {
  final ThemeController themeController = Get.put(ThemeController());

  ReviewTransferController controller = Get.put(ReviewTransferController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        MyText.Reivewtransfer,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                SearchBarWidget(
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 32,
                ),
                Obx(() {
                  return Container(
                    decoration: BoxDecoration(
                        color: AppColors.buttongrey,
                        borderRadius: BorderRadius.circular(48)),
                    height: 43.h,
                    width: 349.w,
                    child: Row(
                      children: [
                        Container(
                          height: 43.h,
                          width: 175.w,
                          child: ButtonWidget(
                              color: controller.getPastButtonColor(),
                              text: Text(
                                MyText.Past,
                                style: TextStyle(
                                    color: controller.getPastButtonTextColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Work Sans'),
                              ),
                              onPressed: () {
                                controller.setPastValue(true);
                              }),
                        ),
                        Container(
                          height: 43.h,
                          width: 173.w,
                          child: ButtonWidget(
                              color: controller.getupcomingButtonColor(),
                              text: Text(
                                MyText.Upcoming,
                                style: TextStyle(
                                    color:
                                        controller.getupcomingButtonTextColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              onPressed: () {
                                controller.setPastValue(false);
                              }),
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.Transfercompleted,
                  style: TextStyle(
                      color: AppColors.white,
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
                      color: AppColors.DarkGrey,
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      child: Column(
                        children: [
                          Transaction(
                            imageAsset: AppAssets.netflix,
                            title: "Netflix",
                            subtitle: MyText.NetflixTIME,
                            cost: "-£3.9",
                            costType: "Subscription",
                            titleColor: AppColors.white,
                            subtitleColor:
                                AppColors.accountSubTitle,
                            costColor: AppColors.white,
                            costTypeColor:
                                AppColors.accountSubTitle,
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          Transaction(
                            imageAsset: AppAssets.figma,
                            title: "Figma",
                            subtitle: MyText.figmaTIME,
                            cost: "-£5.9",
                            costType: "Subscription",
                            titleColor: AppColors.white,
                            subtitleColor:
                                AppColors.accountSubTitle,
                            costColor: AppColors.white,
                            costTypeColor:
                                AppColors.accountSubTitle,
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          Transaction(
                            imageAsset: AppAssets.ss_icon,
                            title: MyText.ToShaunSheep,
                            subtitle: MyText.figmaTIME,
                            cost: "-£5.9",
                            costType: MyText.SentfromETBank,
                            titleColor: AppColors.white,
                            subtitleColor:
                                AppColors.accountSubTitle,
                            costColor: AppColors.white,
                            costTypeColor:
                                AppColors.accountSubTitle,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
