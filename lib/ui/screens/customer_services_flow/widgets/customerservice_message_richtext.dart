import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class MessageRickText extends StatefulWidget {
  MessageRickText({super.key, this.text, this.textValue});
  String? text;
  String? textValue;

  @override
  State<MessageRickText> createState() => _MessageRickTextState();
}

class _MessageRickTextState extends State<MessageRickText> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.text ?? MyText.Appver,
              style: TextStyle(
                color: AppColors.greyText2,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: MyTextStyles.worksansFamily,
              ),
            ),
            TextSpan(
              text: widget.textValue ?? '1.11.1',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: MyTextStyles.worksansFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
