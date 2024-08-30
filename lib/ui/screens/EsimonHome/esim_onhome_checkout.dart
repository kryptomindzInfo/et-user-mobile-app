import 'package:et_bank/controllers/Esim_Activation/Esim_choose_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Add_Money_Account/how%20to%20add%20money.dart';
import 'package:et_bank/ui/screens/TransferFlow/widgets/qrscanner_widget.dart';
import 'package:et_bank/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class EsimOnHomeCheckOut extends StatefulWidget {
  EsimOnHomeCheckOut({super.key});

  @override
  State<EsimOnHomeCheckOut> createState() => _EsimOnHomeCheckOutState();
}

class _EsimOnHomeCheckOutState extends State<EsimOnHomeCheckOut> {
  EsimChooseMobileNoController controller =
      Get.put(EsimChooseMobileNoController());
  final ThemeController themeController = Get.put(ThemeController());

  QrScannerWidget qrScannerWidget = QrScannerWidget();

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.

    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#42f5ef", "Cancel", true, ScanMode.QR);
    print(barcodeScanRes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
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
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      MyText.Checkout,
                      style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyTextStyles.soraFamily),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),

              // First Container

              Container(
                width: 350,
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(22, 18, 15, 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Plan,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Text(
                            MyText.SimActivation$10,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            MyText.PlanInclude,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                MyText.minCalls10,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                MyText.TextMessages10,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                MyText.GBInternet10,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.CityCountryRegion,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Row(
                            children: [
                              Text(
                                'UK',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Image.asset(
                                AppAssets.t_uk,
                                height: 25.h,
                                width: 25.w,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.AdditionalPrice,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Text(
                            MyText.amountinDollars,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),

              // Second Container

              Container(
                width: 350,
                decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(22)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(22, 18, 15, 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            MyText.Totalamount,
                            style: TextStyle(
                                color: AppColors.greyText2,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                          Text(
                            MyText.a999,
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: MyTextStyles.worksansFamily),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppAssets.checkout_card,
                            width: 42.w,
                            height: 42.h,
                            
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MyText.Adddebitcard,
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: MyTextStyles.worksansFamily),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                width: 150.w,
                                child: Text(
                                  MyText.Carddetailsaddedsecurely,
                                  style: TextStyle(
                                      color: AppColors.greyText2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 94.w,
                            height: 41.h,
                            child: ButtonWidget(
                                color: AppColors.darkGreen,
                                text: Text(
                                  MyText.Change,
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: MyTextStyles.worksansFamily),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Howtoaddmoney()));
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: themeController.bgColor.value,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: ButtonWidget(
                      color: AppColors.primary,
                      text: const Text(
                        MyText.Pay,
                        style: TextStyle(
                            fontFamily: MyTextStyles.worksansFamily,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        scanBarcodeNormal();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => QrScannerWidget().scanBarCodeNormal));
                      }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
