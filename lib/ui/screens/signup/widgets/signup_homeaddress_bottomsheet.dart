import 'package:et_bank/controllers/signup/signup_homeaddress_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

void showHomeAddressModalBottomSheet(BuildContext context) {
  SignupHomeAddressController signupHomeAddressController =
      Get.put(SignupHomeAddressController());
  final ThemeController themeController = Get.put(ThemeController());

  showModalBottomSheet(
    backgroundColor: AppColors.greyBox,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 700,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35.h,
                width: 350.w,
                child: TextFormField(
                  onChanged: (value) {
                    signupHomeAddressController.postCodeText.value = value;
                  },
                  style: TextStyle(color: AppColors.primaryText),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.greyText2,
                    prefixIconColor: AppColors.primaryText,
                    suffixIconColor: AppColors.primaryText,
                    suffixIcon: InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppAssets.icon_close,
                        width: 14.5.w,
                        height: 14.5.h,
                        color: AppColors.primaryText,
                      ),
                    ),
                    prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          AppAssets.icon_search,
                          height: 14.h,
                          width: 14.w,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Text(
                  MyText.signupHomeAddressNotHere,
                  style: TextStyle(
                      color: AppColors.greenText,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'WorkSans'),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.allBoxes,
                      borderRadius: BorderRadius.circular(20)),
                  height: 600.h,
                  width: 351.w,
                  child: ListView.builder(
                      itemCount: 19,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, bottom: 8),
                                child: InkWell(
                                  onTap: () {
                                    signupHomeAddressController
                                            .postCodeText.value =
                                        '$index Bush Loan Rd, Edinburgh ';
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    '$index Bush Loan Rd, Edinburgh ',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'WorkSans'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
