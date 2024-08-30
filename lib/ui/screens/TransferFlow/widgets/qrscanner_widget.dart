import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class QrScannerWidget extends StatefulWidget {
  QrScannerWidget({super.key});

  @override
  State<QrScannerWidget> createState() => _QrScannerWidgetState();
}

class _QrScannerWidgetState extends State<QrScannerWidget> {
  final ThemeController themeController = Get.put(ThemeController());
  String _scanBarcode = "";

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.

    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#42f5ef", "Cancel", true, ScanMode.QR);
    print(barcodeScanRes);

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   scanBarcodeNormal();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            QrImageView(
              data: 'This QR code has an embedded image as well',
              version: QrVersions.auto,
              size: 320,
              gapless: false,
              embeddedImage: AssetImage(AppAssets.qrimage),
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: Size(317.w, 313.h),
              ),
            ),
            MaterialButton(
                color: AppColors.primary,
                textColor: Colors.red,
                onPressed: () {
                  scanBarcodeNormal();
                },
                child: Text('Scan'))
          ],
        ),
      ),
    );
  }
}
