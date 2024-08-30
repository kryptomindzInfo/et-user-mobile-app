import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/addAccount/addaccount_allaccounts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void showCurrenciesListBottomSheet(BuildContext context) {
  List currenciesList = [
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency1,
      'subtitle': MyText.currencyshort1,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency2,
      'subtitle': MyText.currencyshort2,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency3,
      'subtitle': MyText.currencyshort3,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency4,
      'subtitle': MyText.currencyshort4,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency5,
      'subtitle': MyText.currencyshort5,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency6,
      'subtitle': MyText.currencyshort6,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency7,
      'subtitle': MyText.currencyshort7,
    },
    {
      'image': AppAssets.ukImage,
      'title': MyText.currency8,
      'subtitle': MyText.currencyshort8,
    },
  ];

  showModalBottomSheet(
    backgroundColor: AppColors.buttongrey,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Obx(
        () => Container(
          decoration: BoxDecoration(
              color: AppColors.allBoxes,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          height: 700,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 20, right: 20, bottom: 20),
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
                    size: 25,
                    color: AppColors.primaryText,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Add Account',
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sora'),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 35.h,
                  width: 350.w,
                  child: TextFormField(
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.PrimaryTextField,
                      prefixIconColor: AppColors.primaryText,
                      suffixIconColor: AppColors.primaryText,
                      suffixIcon: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          AppAssets.icon_close,
                          width: 14.5.w,
                          height: 14.5.h,
                          color: AppColors.primaryText,
                        ),
                      ),
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: Image.asset(AppAssets.icon_search,color: AppColors.primaryText,),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: themeController.bgColor.value,
                        borderRadius: BorderRadius.circular(20)),
                    height: 480.h,
                    width: 348.w,
                    child: ListView.builder(
                        itemCount: currenciesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 20, bottom: 0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showAllAccountsModalBottomSheet(context);
                                  },
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      child: ClipOval(
                                        child: Image.asset(
                                          currenciesList[index]['image'],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      currenciesList[index]['title'],
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'WorkSans'),
                                    ),
                                    subtitle: Text(
                                      currenciesList[index]['subtitle'],
                                      style: TextStyle(
                                          color: AppColors.greyText2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'WorkSans'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
