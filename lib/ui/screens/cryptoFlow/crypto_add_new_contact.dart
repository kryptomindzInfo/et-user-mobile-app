import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/profile.dart';
import 'package:et_bank/ui/screens/cryptoFlow/widgets/crypto_buy_bitcoin_widget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:et_bank/ui/widgets/themeCustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class CryptoAddNewContact extends StatefulWidget {
  const CryptoAddNewContact({super.key});

  @override
  State<CryptoAddNewContact> createState() => _CryptoAddNewContactState();
}

class _CryptoAddNewContactState extends State<CryptoAddNewContact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    Profile(),
                  );
                },
                child: Image.asset(
                  AppAssets.appbar1,
                  width: 34.w,
                  height: 34.h,
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              MyText.Crypto,
              style: MyTextStyles.sora5(
                fontsize: 16.sp,
                color: AppColors.primaryText,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Image.asset(
                  AppAssets.notifi,
                  width: 19.44.w,
                  height: 25.27.h,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              children: [
                SearchBarWidget(
                  hintText: "",
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                CryptoBuyBitCoinWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
