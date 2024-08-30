import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/global/widgets/text_field_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/e_sim_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class EsimChooseMobileNo extends StatefulWidget {
  EsimChooseMobileNo({super.key});

  @override
  State<EsimChooseMobileNo> createState() => _EsimChooseMobileNoState();
}

class _EsimChooseMobileNoState extends State<EsimChooseMobileNo> {
  EsimChooseMobileNoController controller =
      Get.put(EsimChooseMobileNoController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 65.0, left: 20, right: 20, bottom: 20),
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
                          width: 16,
                        ),
                        Text(
                          MyText.Activateyouresim,
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
                    height: 48.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyText.EnteryourMobileNumber,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        // SizedBox(height: 22.h),
                        TextFieldWidget(
                          hintText: MyText.signupMobilehintText,
                          hintStyle: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 32.h),
                        Text(
                          MyText.EnterIMEINumber,
                          style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: MyTextStyles.soraFamily),
                        ),
                        TextFieldWidget(
                          hintText: MyText.IMEINumber,
                          hintStyle: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
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
                          color: AppColors.primaryButton,
                          text: Text(
                            MyText.continu,
                            style: TextStyle(
                              fontFamily: MyTextStyles.worksansFamily,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.btnText,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ESimOtp()));
                          }),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
