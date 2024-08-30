import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/activate_your_esim.dart';
import 'package:et_bank/ui/screens/e_sim_activation/widgets/benefits_of_Esim_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class TermsAndConditions extends StatefulWidget {
  TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
                      MyText.termsAndConditions,
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
              BenefitsOfEsimWidget(
                title: MyText.DeviceCompatibility1,
                subtitle: MyText.DeviceCompatibilitydesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.CarrierSupport2,
                subtitle: MyText.CarrierSupportdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.ServiceFees3,
                subtitle: MyText.ServiceFeesdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.SecurityMeasures4,
                subtitle: MyText.SecurityMeasuresdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.NetworkCoverage5,
                subtitle: MyText.NetworkCoveragedesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.ActivationProcess6,
                subtitle: MyText.ActivationProcessdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.DeviceRestart7,
                subtitle: MyText.DeviceRestartdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.TermsofService8,
                subtitle: MyText.TermsofServicedesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.CompatibilitywithServices9,
                subtitle: MyText.CompatibilitywithServicesdesc,
              ),
              BenefitsOfEsimWidget(
                title: MyText.UpdatesandChanges10,
                subtitle: MyText.UpdatesandChangesdesc,
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
                      text:  Text(
                        MyText.continu,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,color: AppColors.btnText,),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivateYourEsim()));
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
