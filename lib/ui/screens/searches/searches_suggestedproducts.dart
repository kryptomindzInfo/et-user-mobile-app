import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/searches/searches_youraccounts.dart';
import 'package:et_bank/ui/screens/searches/widgets/searches_image_widget.dart';
import 'package:et_bank/ui/screens/searches/widgets/searches_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class SearchesSuggestedProducts extends StatefulWidget {
  const SearchesSuggestedProducts({super.key});

  @override
  State<SearchesSuggestedProducts> createState() =>
      _SearchesSuggestedProductsState();
}

class _SearchesSuggestedProductsState extends State<SearchesSuggestedProducts> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SearchWidget(
                    onchanged: (value) {
                      if (value.length > 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchesYourAccounts()));
                      }
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      MyText.Cancel,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyText.Suggestedproducts,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                    Text(
                      MyText.seeall,
                      style: TextStyle(
                          color: AppColors.greenText,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: MyTextStyles.worksansFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 107,
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(28)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchesImageWidget(
                      image: AppAssets.gifts_icon,
                      text: MyText.Gifts,
                    ),
                    SearchesImageWidget(
                      image: AppAssets.stocks_icon,
                      text: MyText.Stocks,
                    ),
                    SearchesImageWidget(
                      image: AppAssets.insurance_icon,
                      text: MyText.Insurance,
                    ),
                    SearchesImageWidget(
                      image: AppAssets.lounges_icon,
                      text: MyText.Lounges,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
