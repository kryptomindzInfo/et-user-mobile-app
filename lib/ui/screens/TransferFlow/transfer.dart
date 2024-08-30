import 'package:et_bank/controllers/accountDetails_Flow/accountdetails_reviewtransfer_controller.dart';
import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/Iconbutton_widget.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_add_new_contact.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_contact_access_dialog.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_customise.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_transfer_completed.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
// import 'package:et_bank/ui/screens/homescreens/widget/textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Transfer extends StatefulWidget {
  Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  AccountDetailsFlowAccountDetailsController controller =
      Get.put(AccountDetailsFlowAccountDetailsController());

  ReviewTransferController reviewTransferController =
      Get.put(ReviewTransferController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: GestureDetector(
              onTap: () {
                Get.to(
                  Profile(),
                );
              },
              child: Image.asset(
                AppAssets.appbar1,
                width: 34.w,
                height: 34.h,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ImageButtonWidget(
                padding: 5,
                height: 15.h,
                width: 15.w,
                text: MyText.new1,
                textStyle: TextStyle(
                    color: AppColors.btnText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: MyTextStyles.worksansFamily),
                image: AppAssets.addBlack,
                color: AppColors.primaryButton,
                onPressed: () {
                  transferCustomise(context);
                },
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(left: 7.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       GestureDetector(
                //         onTap: () {
                //           Get.to(Profile());
                //         },
                //         child: Image.asset(
                //           AppAssets.editprofile_pic,
                //           width: 34.w,
                //           height: 34.h,
                //         ),
                //       ),
                //       Text(
                //         MyText.Transfer,
                //         style: TextStyle(
                //             color: AppColors.white,
                //             fontSize: 16,
                //             fontWeight: FontWeight.w600,
                //             fontFamily: MyTextStyles.worksansFamily),
                //       ),
                //       ImageButtonWidget(
                //           padding: 5,
                //           height: 15.h,
                //           width: 15.w,
                //           text: MyText.new1,
                //           textStyle: TextStyle(
                //               color: themeController.bgColor.value,
                //               fontSize: 16,
                //               fontWeight: FontWeight.w500,
                //               fontFamily: MyTextStyles.worksansFamily),
                //           image: AppAssets.addBlack,
                //           color: AppColors.primary,
                //           onPressed: () {
                //             transferCustomise(context);
                //           }),
                //     ],
                //   ),
                // ),
                SearchBarWidget(
                  hintText: "Home",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 16.h,
                ),
                controller.firstTimeTransfer.value == false
                    ? Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.inActiveTabButtons1,
                                borderRadius: BorderRadius.circular(48)),
                            height: 43.h,
                            width: 349.w,
                            child: Row(
                              children: [
                                Container(
                                  height: 43.h,
                                  width: 175.w,
                                  child: ButtonWidget(
                                      color: reviewTransferController
                                          .getPastButtonColor(),
                                      text: Text(
                                        MyText.Past,
                                        style: TextStyle(
                                            color: reviewTransferController
                                                .getPastButtonTextColor(),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Work Sans'),
                                      ),
                                      onPressed: () {
                                        reviewTransferController
                                            .setPastValue(true);
                                      }),
                                ),
                                Container(
                                  height: 43.h,
                                  width: 173.w,
                                  child: ButtonWidget(
                                      color: reviewTransferController
                                          .getupcomingButtonColor(),
                                      text: Text(
                                        MyText.Upcoming,
                                        style: TextStyle(
                                            color: reviewTransferController
                                                .getupcomingButtonTextColor(),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                MyTextStyles.worksansFamily),
                                      ),
                                      onPressed: () {
                                        reviewTransferController
                                            .setPastValue(false);
                                      }),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: ((context) =>
                              //             AccountDetailsTransferReivew())));
                              transferCompleted(context);
                            },
                            child: Container(
                              width: 349.w,
                              decoration: BoxDecoration(
                                  color: AppColors.greyBox,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(17, 24, 24, 24),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.Green,
                                      height: 43.h,
                                      width: 43.w,
                                    ),
                                    SizedBox(
                                      width: 17.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          MyText.ShaunSheep,
                                          style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily:
                                                MyTextStyles.worksansFamily,
                                          ),
                                        ),
                                        Text(
                                          MyText.Yousent1,
                                          style: TextStyle(
                                            color: AppColors.greyText1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily:
                                                MyTextStyles.worksansFamily,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 95.w,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 24.0),
                                      child: Text(
                                        MyText.a1434,
                                        style: TextStyle(
                                            color: AppColors.greyText1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily:
                                                MyTextStyles.worksansFamily),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            width: 349.w,
                            decoration: BoxDecoration(
                                color: AppColors.greyBox,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(28, 80, 28, 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppAssets.send_first_transfer,
                                    height: 83.h,
                                    width: 83.w,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Text(
                                    MyText.Sendyourfirsttransfer,
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: MyTextStyles.soraFamily),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    MyText.Createnewbeneficiary,
                                    style: TextStyle(
                                        color: AppColors.greyText2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      transferCustomise(context);
                                    },
                                    child: Text(
                                      MyText.GetStarted,
                                      style: TextStyle(
                                          color: AppColors.greenText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Container(
                            width: 349.w,
                            decoration: BoxDecoration(
                                color: AppColors.greyBox,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(28, 80, 28, 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppAssets.transfer_contacts,
                                    height: 83.h,
                                    width: 83.h,
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Text(
                                    MyText.Addyourcontacts,
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: MyTextStyles.soraFamily),
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    MyText.Sendmoneyfree,
                                    style: TextStyle(
                                        color: AppColors.greyText1,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      TransferContactDialog(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TransferAddNewContact()));
                                        },
                                      ).showTransferContactDialog(context);
                                    },
                                    child: Text(
                                      MyText.Enablecontactpermission,
                                      style: TextStyle(
                                          color: AppColors.greenText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
