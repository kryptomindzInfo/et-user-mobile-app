import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/cupertino.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SearchesImageWidget extends StatefulWidget {
  SearchesImageWidget({super.key, this.image, this.text});

  String? image;
  String? text;

  @override
  State<SearchesImageWidget> createState() => _SearchesImageWidgetState();
}

class _SearchesImageWidgetState extends State<SearchesImageWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(widget.image ?? AppAssets.uk),
        SizedBox(
          height: 8,
        ),
        Text(
          widget.text ?? '',
          style: TextStyle(
              color: AppColors.greyText2,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: MyTextStyles.worksansFamily),
        ),
      ],
    );
  }
}
