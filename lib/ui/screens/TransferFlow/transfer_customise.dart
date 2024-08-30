import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_contact_access_dialog.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_my_qrcode.dart';
import 'package:et_bank/ui/screens/TransferFlow/transfer_securityandPrivacy.dart';
import 'package:et_bank/ui/screens/account_settings/widgets/yourplan_freetrialwidget.dart';
import 'package:et_bank/ui/screens/settings/settings_choosebank.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/searchtext.dart';

void transferCustomise(BuildContext context) {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.

    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#42f5ef", "Cancel", true, ScanMode.QR);
    print(barcodeScanRes);
  }

  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 788.h,
        width: 390.w,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 54),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                SearchBarWidget(
                  hintText: '',
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  MyText.AddNew,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),

                // First Continer
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.addressBox,
                      borderRadius: BorderRadius.circular(20)),
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(SettingsChoosebank());
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.bank_recipent,
                          color: AppColors.addressBox,
                          title: MyText.Bankrecipient,
                          subTitle: MyText.Transfermoneyanybankaccount,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.card_2x,
                        color: AppColors.addressBox,
                        title: MyText.Cardrecipient,
                        subTitle: MyText.Transfermoneyanycardaccount,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.group,
                        color: AppColors.addressBox,
                        title: MyText.Group,
                        subTitle: MyText.Settleexpenseswithfriends,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.contact,
                        color: AppColors.addressBox,
                        title: MyText.Contact,
                        subTitle: MyText.Addcontactusingphoneoremail,
                        textColor: AppColors.primaryText,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                // QR Code Scanner

                Text(
                  MyText.QRCode,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),

                Container(
                  decoration: BoxDecoration(
                      color: AppColors.addressBox,
                      borderRadius: BorderRadius.circular(20)),
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GenerateQRCode()));
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.qrgenerate,
                          color: AppColors.addressBox,
                          title: MyText.GetQRCode,
                          subTitle: MyText.GetQRcodetosharesomeone,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          scanBarcodeNormal();
                        },
                        child: YourPlanFreeTrial(
                          image: AppAssets.qrscanner,
                          color: AppColors.addressBox,
                          title: MyText.ScanQRcode,
                          subTitle: MyText.Scancodetotransfermoney,
                          textColor: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),

                // Second Container

                Text(
                  MyText.Recipients,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),

                Container(
                  decoration: BoxDecoration(
                      color: AppColors.addressBox,
                      borderRadius: BorderRadius.circular(20)),
                  width: 350.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.bank_recipent_abroad,
                        color: AppColors.addressBox,
                        title: MyText.Bankrecipient,
                        subTitle: MyText.findbestwaytotransferabroad,
                        textColor: AppColors.primaryText,
                      ),
                      YourPlanFreeTrial(
                        image: AppAssets.card_recipent,
                        color: AppColors.addressBox,
                        title: MyText.Cardrecipient,
                        subTitle: MyText.Transferwithoutaccountdetails,
                        textColor: AppColors.primaryText,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: () {
                    TransferContactDialog(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TransferSecurityandPrivacy()));
                      },
                    ).showTransferContactDialog(context);
                  },
                  child: YourPlanFreeTrial(
                    height: 110,
                    image: AppAssets.enable_contacts,
                    color: AppColors.addressBox,
                    title: MyText.Enablecontactspermissions,
                    subTitle: MyText.Toallowfreeandinstantpayments,
                    textColor: AppColors.primaryText,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  MyText.Other,
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: MyTextStyles.soraFamily),
                ),
                SizedBox(
                  height: 4.h,
                ),
                YourPlanFreeTrial(
                  image: AppAssets.enable_contacts,
                  color: AppColors.addressBox,
                  title: MyText.JamesAnderson,
                  subTitle: MyText.a12343212345,
                  textColor: AppColors.primaryText,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
