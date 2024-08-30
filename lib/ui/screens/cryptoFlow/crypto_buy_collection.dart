import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_staking.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_buy_collection_graph.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_graph_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoBuyNewCollection extends StatefulWidget {
  const CryptoBuyNewCollection({super.key});

  @override
  State<CryptoBuyNewCollection> createState() => _CryptoBuyNewCollectionState();
}

class _CryptoBuyNewCollectionState extends State<CryptoBuyNewCollection> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.Crypto,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.soraFamily),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                            MyText.Protocolsthatsupport,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: CircleAvatar(
                          backgroundColor: AppColors.circle4,
                          radius: 27.r,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  Container(
                    width: 162.h,
                    child: ButtonWidget(
                        color: AppColors.yellowButton,
                        text: Text(
                          MyText.Buycollection,
                          style: TextStyle(
                              color: AppColors.blackText,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: MyTextStyles.worksansFamily),
                        ),
                        onPressed: () {
                          Get.to(CryptoStaking());
                        }),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    // height: 465.h,
                    width: 351.w,
                    decoration: BoxDecoration(
                        color: AppColors.greyBox,
                        borderRadius: BorderRadius.circular(28)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, top: 22, right: 16, bottom: 14),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  MyText.a545,
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.soraFamily),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      MyText.Averageperformance,
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          fontFamily:
                                              MyTextStyles.worksansFamily),
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Image.asset(AppAssets.exclamation_icon),
                                  ],
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  MyText.Todaytc,
                                  style: TextStyle(
                                      color:
                                          AppColors.greyText2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                                SizedBox(
                                  height: 37.h,
                                ),
                                Container(
                                    height: 180.h,
                                    width: 300.w,
                                    child: BuyCollectionGraph()),
                              ]),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 0, right: 10, bottom: 14),
                          child: CryptoGraphButtons(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
