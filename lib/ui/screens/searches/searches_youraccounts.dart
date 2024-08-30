import 'package:et_bank/controllers/searches/searches_youraccount_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/searches/widgets/searches_notfound_widget.dart';
import 'package:et_bank/ui/screens/searches/widgets/searches_search_widget.dart';
import 'package:et_bank/ui/screens/searches/widgets/serches_youraccounts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class SearchesYourAccounts extends StatefulWidget {
  SearchesYourAccounts({super.key});

  @override
  State<SearchesYourAccounts> createState() => _SearchesYourAccountsState();
}

class _SearchesYourAccountsState extends State<SearchesYourAccounts> {
  final ThemeController themeController = Get.put(ThemeController());

  SearchesYourAccountDetailsController searchesYourAccountDetailsController =
      Get.put(SearchesYourAccountDetailsController());

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchWidget(
                        controller: searchController,
                        onchanged: (value) {
                          if (value == 'star') {
                            searchesYourAccountDetailsController.setfound(true);
                          } else
                            searchesYourAccountDetailsController
                                .setfound(false);
                        },
                      ),
                      InkWell(
                        onTap: () {
                          searchController.clear();
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
                  searchesYourAccountDetailsController.found.value == false
                      ? SeachesYourAccountWidget()
                      : SearchesNotFountdWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
