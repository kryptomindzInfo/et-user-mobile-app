import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/e_sim_activation/choose_mobile_no.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class EsimHomeNotActivatedWidget extends StatefulWidget {
  const EsimHomeNotActivatedWidget({super.key});

  @override
  State<EsimHomeNotActivatedWidget> createState() =>
      _EsimHomeNotActivatedWidgetState();
}

class _EsimHomeNotActivatedWidgetState
    extends State<EsimHomeNotActivatedWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322.w,
      // height: 62.h,
      decoration: BoxDecoration(
        color: AppColors.blackBox2,
        borderRadius: BorderRadius.circular(31.r),
      ),
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.only(left: 24.w, right: 15.w, top: 15.h, bottom: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyText.ActivateyourESimNow,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontFamily: MyTextStyles.soraFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    width: 110.w,
                    child: ButtonWidget(
                      color: AppColors.primaryButton,
                      text: Text(
                        MyText.Activate,
                        style: TextStyle(
                          color: AppColors.btnText,
                          fontFamily: MyTextStyles.soraFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EsimChooseMobileNo()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
