import 'package:et_bank/controllers/accountDetails_Flow/accountdetails_date_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/widgets/accountdetails_reference_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AccountDetailsDate extends StatefulWidget {
  AccountDetailsDate({super.key});

  @override
  State<AccountDetailsDate> createState() => _AccountDetailsDateState();
}

class _AccountDetailsDateState extends State<AccountDetailsDate> {
  AccountDetailsDOBController controller =
      Get.put(AccountDetailsDOBController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        color: AppColors.primaryText,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      MyText.Schedule,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Obx(() {
                return InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2050),
                    ).then((selectedDate) {
                      if (selectedDate != null) {
                        controller.setDOB(
                            DateFormat('dd MMM y').format(selectedDate));
                      }
                    });
                  },
                  child: ReferenceWidget(
                    text1: MyText.Startdatetext,
                    text2: controller.DOBhintText.value,
                    containerColor: AppColors.whiteBox,
                  ),
                );
              }),
              SizedBox(
                height: 16.h,
              ),
              ReferenceWidget(
                    containerColor: AppColors.whiteBox,
                text1: MyText.Repeat,
                text2: MyText.None,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              height: 120,
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: ButtonWidget(
                        color: AppColors.primaryButton,
                        text:  Text(
                          MyText.Setschedule,
                          style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.btnText,
                          ),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             AccountDetailsPayee()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
