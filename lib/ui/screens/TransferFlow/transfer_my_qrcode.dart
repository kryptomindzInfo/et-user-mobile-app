import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/controllers/transfer/transfer_myqrcode_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/screens/TransferFlow/widgets/myqrcode_widget.dart';
import 'package:et_bank/ui/screens/TransferFlow/widgets/qrscanner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GenerateQRCode extends StatefulWidget {
  GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TransferMyQRCodeController controller = Get.put(TransferMyQRCodeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeController.bgColor.value,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(AppAssets.leftarrow,color: AppColors.primaryText,),
        ),
        actions: [
          Image.asset(
            AppAssets.qr1,
            width: 24.w,
            height: 26.h,
          ),
          SizedBox(
            width: 16,
          ),
          Image.asset(
            AppAssets.qr2,
            width: 23.w,
            height: 14.h,
            color: AppColors.primaryText,
          ),
          SizedBox(
            width: 21,
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Obx(() {
          return SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  controller.Scan.value == false
                      ? MyQRCodeWidget()
                      : Container(height: 620.h, child: QrScannerWidget()),
                ]),
          );
        }),
      ),
    );
  }
}
