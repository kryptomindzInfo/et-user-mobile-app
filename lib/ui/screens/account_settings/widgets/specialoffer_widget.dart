import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SpecialOfferWidget extends StatefulWidget {
  SpecialOfferWidget({super.key});

  @override
  State<SpecialOfferWidget> createState() => _SpecialOfferWidgetState();
}

class _SpecialOfferWidgetState extends State<SpecialOfferWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeController.bgColor.value,
          borderRadius: BorderRadius.circular(20)),
      height: 30.h,
      width: 126.w,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
        child: Row(
          children: [
            Image.asset(AppAssets.specialoffer_icon,color: AppColors.primaryText,),
            SizedBox(
              width: 7,
            ),
            Text(
              MyText.specialOffer,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.worksansFamily),
            ),
          ],
        ),
      ),
    );
  }
}
