import 'package:et_bank/controllers/esim_settings_flow/esim_data_warning_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());
void setDataWarning(BuildContext context) {
  EsimDataWarningController controller = Get.put(EsimDataWarningController());
  showModalBottomSheet(
    backgroundColor: AppColors.greyBox,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Obx(
        () => Container(
          decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 310.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 11.0, left: 41, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallRoundedContainerWidget(),
                SizedBox(
                  height: 56.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.SetDataWarning,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primaryText),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 100.w,
                            child: TextFormField(
                              initialValue: '10',
                              style: TextStyle(
                                  color: AppColors.greyText2),
                              decoration: InputDecoration.collapsed(
                                hintText: "",
                                hintStyle: TextStyle(
                                    color:
                                        AppColors.greyText2),
                                border: InputBorder.none,
                              ),
                            )),
                        Container(
                          width: 60.w,
                          child: DropdownButton<String>(
                            dropdownColor: AppColors.grey,
                            borderRadius: BorderRadius.circular(8),
                            underline: SizedBox(),
                            iconEnabledColor: AppColors.primaryText,
                            value: controller.dataWarningDropDown?.value,
                            onChanged: (String? newValue) {
                              controller.setDataWarningDropDown(newValue);
                            },
                            items: <String>['GB', 'MB'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                ButtonWidget(
                    color: AppColors.primary,
                    text: const Text(
                      MyText.set,
                      style: TextStyle(
                          fontFamily: 'WorkSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      );
    },
  );
}
