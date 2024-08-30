import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/complete_signup/compsignup_checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompSignupConfirmAddress extends StatefulWidget {
  const CompSignupConfirmAddress({super.key});

  @override
  State<CompSignupConfirmAddress> createState() =>
      _CompSignupConfirmAddressState();
}

class _CompSignupConfirmAddressState extends State<CompSignupConfirmAddress> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    Future<void> showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            backgroundColor: AppColors.greyBox,
            elevation: 0,
            title: Text(
              'Edit Address',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
            content: TextFormField(
              initialValue: MyText.compSignupAddressDescription,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: MyTextStyles.worksansFamily),
              decoration: InputDecoration(
                  hintStyle: TextStyle(
                      color: AppColors.greyText2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: MyTextStyles.worksansFamily),
                  border: InputBorder.none),
              maxLines: 10,
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 35.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.primaryButton,
                        borderRadius: BorderRadius.circular(28)),
                    child: TextButton(
                      child: Text(
                        'Ok',
                        style: TextStyle(
                            color: AppColors.btnText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: AppColors.whiteBox4,
                        borderRadius: BorderRadius.circular(28)),
                    child: TextButton(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: themeController.bgColor.value,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: themeController.bgColor.value,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                    MyText.compSignupConfirmAddressTitle,
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: MyTextStyles.soraFamily),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 350.w,
                height: 230.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColors.greyBox,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 0, 0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.compSignupDeliveryAddress,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Sora'),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            MyText.compSignupAddressDescription,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'WorkSans'),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      ButtonWidget(
                        onPressed: () {
                          showMyDialog();
                        },
                        height: 41.h,
                        minwidth: 58.h,
                        color: AppColors.disableButton,
                        borderRadius: 63,
                        text: Text(
                          MyText.compSignupConfirmAddressedit,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Image.asset(
                AppAssets.map,
                height: 195.h,
                width: 350.h,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          // final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: 0),
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
                        MyText.compSignupConfirmDeliveryAddress,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompSignupCheckOut()));
                      }),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
