import 'package:et_bank/controllers/customer_services/customerservices_questions_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
class CustomerServiceQuestionWidget extends StatefulWidget {

  CustomerServiceQuestionWidget({super.key, this.title, required this.index});

  String? title;
  int index;

  @override
  State<CustomerServiceQuestionWidget> createState() => _CustomerServiceQuestionWidgetState();
}

class _CustomerServiceQuestionWidgetState extends State<CustomerServiceQuestionWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  CustomerQuestionsController controller =
      Get.put(CustomerQuestionsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: 349.w,
        decoration: BoxDecoration(
          color: AppColors.greyBox,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 24),
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 260.w,
                      child: Text(
                        widget.title ?? MyText.HowdoIopenanaccountwithETBank,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ),
                    controller.open[widget.index] == true
                        ? InkWell(
                            onTap: () {
                              controller.setOpen(widget.index);
                            },
                            child: Container(
                              height: 20.h,
                              width: 20.w,
                              child: Image.asset(
                                AppAssets.icon_arrow_up,
                                height: 12.h,
                                width: 24.w,
                                color: AppColors.primaryText,
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              controller.setOpen(widget.index);
                            },
                            child: Container(
                              height: 20.h,
                              width: 20.w,
                              child: Image.asset(
                                AppAssets.icon_arrow_down,
                                height: 12.h,
                                width: 24.w,
                                color: AppColors.primaryText,
                              ),
                            ),
                          ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                controller.open[widget.index] == true
                    ? Container(
                        width: 260.w,
                        child: Text(
                          MyText.ETBanoffersvariousaccounttypes,
                          style: TextStyle(
                              color: AppColors.greyText2,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                      )
                    : Container(),
              ],
            );
          }),
        ),
      ),
    );
  }
}
