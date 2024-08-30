import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/cryptoFlow/polkadotstaking.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoStats extends StatefulWidget {
  const CryptoStats({super.key});

  @override
  State<CryptoStats> createState() => _CryptoStatsState();
}

class _CryptoStatsState extends State<CryptoStats> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(
            MyText.Cryptostats,
            style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w500,
                fontFamily: MyTextStyles.soraFamily),
          ),
          backgroundColor: themeController.bgColor.value,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.asset(
                AppAssets.notifi,
                color: AppColors.primaryText,
              ),
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(PolkaDotStaking());
                  },
                  child: CryptoStatsWidget(
                    title: MyText.Marketcap,
                    subtitle: MyText.ThecurrentpriceofDOT,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                CryptoStatsWidget(
                  title: MyText.Circulatingsupply,
                  subtitle: MyText.ThenumberofDOT,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CryptoStatsWidget(
                  title: MyText.Maxsupply,
                  subtitle: MyText.Themaximumnumberoftokens,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CryptoStatsWidget(
                  title: MyText.a24htradingvolume,
                  subtitle: MyText.Thetotaldollarvalue,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CryptoStatsWidget(
                  title: MyText.Alltimehigh,
                  subtitle: MyText.Thealltimehigh,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CryptoStatsWidget(
                  title: MyText.PopularityonETBank,
                  subtitle: MyText.DOTisthe1most,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
