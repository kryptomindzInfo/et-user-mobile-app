import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SearchesNotFountdWidget extends StatefulWidget {
  const SearchesNotFountdWidget({super.key});

  @override
  State<SearchesNotFountdWidget> createState() => _SearchesNotFountdWidgetState();
}

class _SearchesNotFountdWidgetState extends State<SearchesNotFountdWidget> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 26.h,
        ),
        Image.asset(AppAssets.searchnotfound_image),
        SizedBox(
          height: 34.h,
        ),
        Text(
          MyText.NoResultFound,
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: MyTextStyles.soraFamily),
        ),
        SizedBox(
          height: 11.h,
        ),
        Text(
          MyText.NoResultFoundforStar,
          style: TextStyle(
              color: AppColors.greenText,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: MyTextStyles.worksansFamily),
        ),
      ],
    );
  }
}
