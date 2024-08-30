import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/termsandconditions.dart';
import 'package:et_bank/ui/screens/e_sim_activation/widgets/benefits_of_Esim_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class BenifitsOfEsim extends StatefulWidget {
  BenifitsOfEsim({super.key});

  @override
  State<BenifitsOfEsim> createState() => _BenifitsOfEsimState();
}

class _BenifitsOfEsimState extends State<BenifitsOfEsim> {
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
                        color: AppColors.primaryText,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      MyText.BenefitsofESIM,
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
              BenefitsOfEsimWidget(),
              BenefitsOfEsimWidget(
                title: MyText.DualSIMFunctionality2,
                subtitle: MyText.DualSIMFunctionalitydesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.RemoteActivation3,
                subtitle: MyText.RemoteActivationdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.DeviceFlexibility4,
                subtitle: MyText.DeviceFlexibilitydesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.GlobalRoaming5,
                subtitle: MyText.GlobalRoamingdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.EnvironmentalImpact6,
                subtitle: MyText.EnvironmentalImpactdesc,
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
                                builder: (context) => TermsAndConditions()));
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
