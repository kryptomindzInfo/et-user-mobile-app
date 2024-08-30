import 'package:et_bank/controllers/crypto_flow/crypto_polkadot_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_buydot.dart';
import 'package:et_bank/ui/screens/buycrypto_flow/buycrypto_staking.dart';
import 'package:et_bank/ui/screens/cryptoFlow/crypto_dotalert.dart';
import 'package:et_bank/ui/screens/cryptoFlow/cryptostats.dart';
import 'package:et_bank/ui/screens/cryptoFlow/polkadot_important_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_polkadot_buttons.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_price_alerts_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/plokadot_overview_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_about_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_featuredincollection_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_gethelp_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_news_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_orders_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_overview_buttons_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_staking_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_stats_widget.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/polkadot_transaction_widget.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CryptoPolkaDotOverView extends StatefulWidget {
  CryptoPolkaDotOverView({super.key});

  @override
  State<CryptoPolkaDotOverView> createState() => _CryptoPolkaDotOverViewState();
}

class _CryptoPolkaDotOverViewState extends State<CryptoPolkaDotOverView> {
  CryptoPolkaDotController controller = Get.put(CryptoPolkaDotController());

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
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
                  width: 19.w,
                  height: 25.h,
                  color: AppColors.primaryText,
                ),
              )
            ],
            centerTitle: true,
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 170.h,
                collapsedHeight: 170.h,
                pinned: false,
                backgroundColor: themeController.bgColor.value,
                flexibleSpace: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.Polkadot,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.soraFamily),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                MyText.DOT,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                          Image.asset(
                            AppAssets.DOT,
                            height: 58.h,
                            width: 58.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80.w,
                              height: 44.h,
                              child: ButtonWidget(
                                  color: AppColors.activeTabButtons,
                                  text: Text(
                                    MyText.Buy,
                                    style: TextStyle(
                                        color: AppColors.activetabText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BuyCryptoBuyDot()));
                                  }),
                            ),
                            Container(
                              width: 80.w,
                              height: 44.h,
                              child: ButtonWidget(
                                  color: AppColors.inActiveTabButtons2,
                                  text: Text(
                                    MyText.Sell,
                                    style: TextStyle(
                                        color: AppColors.inactivetabText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily:
                                            MyTextStyles.worksansFamily),
                                  ),
                                  onPressed: () {}),
                            ),
                            Container(
                              width: 90.w,
                              height: 44.h,
                              child: ButtonWidget(
                                  color: AppColors.inActiveTabButtons2,
                                  text: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AppAssets.stake_icon,
                                        width: 10.w,
                                        height: 16.h,
                                        color: AppColors.inactivetabText,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        MyText.Stake,
                                        style: TextStyle(
                                            color: AppColors.inactivetabText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                MyTextStyles.worksansFamily),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}),
                            ),
                            Container(
                              width: 80.w,
                              height: 44.h,
                              child: ButtonWidget(
                                  color: AppColors.inActiveTabButtons2,
                                  text: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AppAssets.send_icon,
                                        width: 10.w,
                                        height: 16.h,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Text(
                                        MyText.send,
                                        style: TextStyle(
                                            color: AppColors.inactivetabText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                MyTextStyles.worksansFamily),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  minHeight: 60,
                  maxHeight: 70.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 00,
                      horizontal: 0,
                    ),
                    child: CryptoPolkaDotButtons(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
                  child: Column(
                    children: [
                      controller.overview.value == true
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PolkaDotOverviewWidget(),
                                PolkaDotFeaturedInCollectionWidget(),
                                PolkaDotStatsWidget(),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CryptoDotAlert(),
                                        ),
                                      );
                                    },
                                    child: PolkaDotPriceAlertWidget()),
                                PolkaDotAboutWidget(),
                                PolkaDotImportantWidget(),
                                PolkaGetHelpWidget(),
                                PolkadotOverviewButtonsWidget(),
                              ],
                            )
                          : controller.staking.value == true
                              ? Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(CryptoStats());
                                      },
                                      child: PolkaDotStakingWidget(),
                                    ),
                                    BuyCryptoStaking(),
                                  ],
                                )
                              : controller.news.value == true
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 32.h),
                                      child: Column(
                                        children: [
                                          PolkaDotNewsWidget(
                                            upperText: MyText.Yesterday,
                                            title:
                                                MyText.MythicalGamesandPolkadot,
                                            subtitle: MyText.ZacksComment,
                                            image: AppAssets.mythical,
                                          ),
                                          SizedBox(
                                            height: 32.h,
                                          ),
                                          PolkaDotNewsWidget(
                                            upperText: MyText.October17,
                                            title: MyText.BigEyes,
                                            subtitle: MyText.ZacksComment,
                                            image: AppAssets.bigeyes,
                                          ),
                                        ],
                                      ),
                                    )
                                  : controller.orders.value == true
                                      ? PolkaDotOrdersWidget()
                                      : controller.transaction.value == true
                                          ? PolkaDotTransactionWidget()
                                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
