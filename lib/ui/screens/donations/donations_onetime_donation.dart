import 'package:et_bank/controllers/Donations/one_time_donation_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/donations/donations_all_charites.dart';
import 'package:et_bank/ui/screens/donations/widgets/onetimedonation_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class DonationsOneTime extends StatefulWidget {
  DonationsOneTime({super.key});

  @override
  State<DonationsOneTime> createState() => _DonationsOneTimeState();
}

class _DonationsOneTimeState extends State<DonationsOneTime> {
  OneTimeDonation controller = Get.put(OneTimeDonation());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 32.0, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              MyText.Onetimedonation,
                              style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: MyTextStyles.soraFamily),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Obx(() {
                return OneTimeDonationWidget(
                  value: controller.selectedCurrency.value,
                  onChanged: (value) {
                    controller.changeSelectedCurrency(value!);
                  },
                  gbpText: MyText.gbp,
                  hintText: '0',
                  balanceText: MyText.bal,
                  balanceTextColor: controller.redAlert.value == false
                      ? AppColors.primaryText
                      : AppColors.red,
                  containerColor: controller.redAlert.value == false
                      ? AppColors.greyBox
                      : AppColors.lightRed,
                  maxLimit: 88,
                  exceededColor: AppColors.red,
                  textFieldOnchanged: (value) {
                    if (value!.length > 2) {
                      controller.setRedAlert(true);
                    } else
                      controller.setRedAlert(false);
                  },
                );
              }),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 48.h,
                        width: 327.w,
                        child: ButtonWidget(
                            color: AppColors.primaryButton,
                            text: const Text(
                              MyText.Confirm,
                              style: TextStyle(
                                  fontFamily: MyTextStyles.worksansFamily,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DonationsAllCharities()));
                            }),
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
