import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class ChildGame extends StatefulWidget {
  ChildGame({
    super.key,
  });

  @override
  State<ChildGame> createState() => _ChildGameState();
}

class _ChildGameState extends State<ChildGame> {
  final ThemeController themeController = Get.put(ThemeController());

  List<String> nike = ['Nike Shoes', 'Nike Track suit', 'Nike Track suit'];

  List<String> nikeImages = [
    AppAssets.nike_shoes,
    AppAssets.nike_shoes,
    AppAssets.nike_shoes
  ];

  List<String> apple = ['Kids Digital Hand watch', 'Mac book', 'Mac book'];

  List<String> appleImages = [
    AppAssets.apple_watch,
    AppAssets.apple_watch,
    AppAssets.nike_shoes
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppColors.childBlue,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                ),
                height: 209.h,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(19, 20, 19, 14),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 54),
                            child: Image.asset(
                              AppAssets.child_game,
                              width: 348.w,
                              height: 117.h,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 20.h,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            AppAssets.child_back,
                            width: 50.w,
                            height: 50.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  height: 630.h,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Image.asset(
                                AppAssets.riot_game,
                                width: 42.w,
                                height: 42.h,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyText.RiotGame,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontFamily: MyTextStyles.soraFamily,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 230.h,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return ProductWidget(
                                  title: nike[index],
                                  image: nikeImages[index],
                                );
                              })),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              Image.asset(
                                AppAssets.sec_game,
                                width: 42.w,
                                height: 42.h,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                MyText.Apple,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontFamily: MyTextStyles.soraFamily,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 230.h,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: ((context, index) {
                                return ProductWidget(
                                  title: apple[index],
                                  image: appleImages[index],
                                );
                              })),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
