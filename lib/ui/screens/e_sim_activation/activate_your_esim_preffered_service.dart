import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';


class ActivateYourEsimPrefferedNetwork extends StatefulWidget {
  ActivateYourEsimPrefferedNetwork({super.key});

  @override
  State<ActivateYourEsimPrefferedNetwork> createState() => _ActivateYourEsimPrefferedNetworkState();
}

class _ActivateYourEsimPrefferedNetworkState extends State<ActivateYourEsimPrefferedNetwork> {
  EsimChooseMobileNoController controller =
      Get.put(EsimChooseMobileNoController());

      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
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
                      width: 16,
                    ),
                    Text(
                      MyText.Activateyouresim,
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
                height: 48.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Text(
                  MyText.Prefferednetworkservice,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
              ),
              SizedBox(height: 25.h),
              Column(
                children: [
                  Obx(
                    () => RadioListTile(
                      activeColor: AppColors.primary,
                      title: Text(
                        '5G',
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      value: 'Option 1',
                      groupValue: controller.selectedOption.value,
                      onChanged: (value) {
                        controller.selectedOption.value = value.toString();
                      },
                    ),
                  ),
                  Obx(
                    () => RadioListTile(
                      activeColor: AppColors.primary,
                      title: Text(
                        '4G',
                        style: TextStyle(
                            color: AppColors.accountSubTitle,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                      ),
                      value: 'Option 2',
                      groupValue: controller.selectedOption.value,
                      onChanged: (value) {
                        controller.selectedOption.value = value.toString();
                      },
                    ),
                  ),
                ],
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
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primary,
                      text: const Text(
                        MyText.continu,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
