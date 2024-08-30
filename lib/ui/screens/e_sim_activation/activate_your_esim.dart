import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/widgets/subscribe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ActivateYourEsim extends StatefulWidget {
  ActivateYourEsim({super.key});

  @override
  State<ActivateYourEsim> createState() => _ActivateYourEsimState();
}

class _ActivateYourEsimState extends State<ActivateYourEsim> {
  final ThemeController themeController = Get.put(ThemeController());

  EsimChooseMobileNoController controller =
      Get.put(EsimChooseMobileNoController());

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
                height: 32.h,
              ),
              SubsScribeWidget(),
              SizedBox(
                height: 16.h,
              ),
              SubsScribeWidget(
                title: MyText.Activateyoursiminjust10,
                subtitle: MyText.Activateyoursiminjust10andget,
                noOfCalls: '10 min ',
                noOfMessages: '10 ',
                amountOfInternet: '01 GB ',
                buttonText: MyText.Activateyoursimin10,
              ),
              SizedBox(
                height: 16.h,
              ),
              SubsScribeWidget(
                title: MyText.Activateyoursiminjust50,
                subtitle: MyText.Activateyoursiminjust10andget,
                noOfCalls: '50 min ',
                noOfMessages: '50 ',
                amountOfInternet: '05 GB ',
                buttonText: MyText.Activateyoursimin10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
