import 'package:et_bank/controllers/accountDetails_Flow/accountdetails_transferComplete_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_date.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/accountdetails_reference_widget.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/tranfercompleted_rowwidget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

void transferCompleted(BuildContext context) {
  AccountDetailsTransferCompleteController controller =
      Get.put(AccountDetailsTransferCompleteController());

  // BtmNavigationController btmNavigationController =
  //     Get.put(BtmNavigationController());

  // AccountDetailsFlowAccountDetailsController accountDetailsController =
  //     Get.put(AccountDetailsFlowAccountDetailsController());

  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Obx(
        () => Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 788.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SingleChildScrollView(
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
                    height: 32.h,
                  ),

                  // Main Row

                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.amount,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontFamily: MyTextStyles.soraFamily,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                            Text(
                              MyText.ToShaunSheep,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.greenText,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              MyText.Capitalatrisk,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontFamily: MyTextStyles.soraFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.primaryText,
                          radius: 30.r,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  // Buttons

                  Row(
                    children: [
                      Container(
                        width: 102.w,
                        height: 36.h,
                        child: ButtonWidget(
                            color: AppColors.primaryText,
                            text: Text(
                              MyText.Sendagain,
                              style: TextStyle(
                                  color: AppColors.blackText,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              // accountDetailsController
                              //     .setFirstTimeTransfer(false);
                              // btmNavigationController.changeTab(1);

                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => btmnavigation()));
                            }),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        width: 92.w,
                        height: 36.h,
                        child: ButtonWidget(
                            color: AppColors.primaryText,
                            text: Text(
                              MyText.Schedule,
                              style: TextStyle(
                                  color: AppColors.blackText,
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              Get.to(
                                AccountDetailsDate(),
                              );
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),

                  // First Container

                  ReferenceWidget(
                    containerColor: AppColors.greyBox,
                    text2Color: AppColors.primaryText,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  // Second Container

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(16)),
                    width: 350.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 0, 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.Transfercompleted,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: MyTextStyles.soraFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          TransferCompletedRowWidget(),
                          SizedBox(
                            height: 32.h,
                          ),
                          TransferCompletedRowWidget(
                            title: MyText.Senttorecipientsbanks,
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          TransferCompletedRowWidget(
                            title: MyText.Recievedbyrecipients,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  // Third Container

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(16)),
                    width: 350.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 32, 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Confirmation,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: MyTextStyles.soraFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.download_icon,
                                color: AppColors.greenText,
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                MyText.Download,
                                style: TextStyle(
                                    color: AppColors.greenText,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
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

                  // Fourth Container

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(16)),
                    width: 350.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 32, 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyText.Accountnumber,
                                style: TextStyle(
                                    color: AppColors.greyText2,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                MyText.accno802,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
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
                                MyText.SortCodeText,
                                style: TextStyle(
                                    color: AppColors.greyText2,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                MyText.SortCode,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
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

                  // Fifth Container

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(16)),
                    width: 350.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 32, 18),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                MyText.Category,
                                style: TextStyle(
                                    color: AppColors.greyText1,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                MyText.Transfer,
                                style: TextStyle(
                                    color: AppColors.greenText,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
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
                                MyText.Receipt,
                                style: TextStyle(
                                    color: AppColors.greyText2,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                MyText.Upload,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
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
                                MyText.Excludefromanalytics,
                                style: TextStyle(
                                    color: AppColors.greyText2,
                                    fontFamily: MyTextStyles.worksansFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Switch(
                                thumbColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return themeController.bgColor
                                        .value; // Color when the switch is ON
                                  }
                                  return Colors
                                      .white; // Color when the switch is OFF
                                }),
                                inactiveThumbColor: AppColors.white,
                                activeTrackColor: AppColors.primary,
                                inactiveTrackColor: AppColors.grey,
                                value: controller.excludefromAnalytics.value,
                                onChanged: (value) {
                                  controller.setexcludefromAnalytics();
                                },
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

                  // Sixth Container

                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(16)),
                    width: 350.w,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 24, 32, 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Reportanissue,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontFamily: MyTextStyles.soraFamily,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Image.asset(
                            AppAssets.icon_arrow_forward,
                            color: AppColors.primaryText,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
