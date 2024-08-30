import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/customer_services_flow/widgets/customerservice_message_richtext.dart';
import 'package:et_bank/ui/screens/customer_services_flow/widgets/services_message_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

final ThemeController themeController = Get.put(ThemeController());

void CustomerServiceMessage(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
              // color: AppColors.buttongrey,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 800.h,
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 22.0, left: 20, right: 20, bottom: 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyText.NewMessage,
                        style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                      Image.asset(
                        AppAssets.green_arrow_up,
                        height: 90,
                        width: 90,
                      ),
                    ],
                  ),
                  ServicesMessageTextField(
                    title: MyText.Tomail,
                  ),
                  ServicesMessageTextField(),
                  ServicesMessageTextField(
                    title: MyText.Subject,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: MyTextStyles.worksansFamily),
                    decoration: InputDecoration(
                        hintText: 'Please Enter your Message',
                        hintStyle: TextStyle(
                            color: AppColors.greyText1,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: MyTextStyles.worksansFamily),
                        border: InputBorder.none),
                    maxLines: 10,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  MessageRickText(),
                  MessageRickText(
                    text: MyText.Systemver,
                    textValue: '11.1.0',
                  ),
                  MessageRickText(
                    text: MyText.device,
                    textValue: MyText.iPhone11,
                  ),
                  MessageRickText(
                    text: MyText.SentfrommyiPhone,
                    textValue: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
