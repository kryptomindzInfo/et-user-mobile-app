import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsChoosebank extends StatelessWidget {
  SettingsChoosebank({super.key});
  final List<ItemData> items = [
    ItemData(MyText.paytm, AppAssets.paytmimg),
    ItemData(MyText.Cirrus, AppAssets.circusimg),
    ItemData(MyText.Wepay, AppAssets.wepayimg),
    ItemData(MyText.paytm, AppAssets.paytmimg),
    ItemData(MyText.Cirrus, AppAssets.circusimg),
    ItemData(MyText.Wepay, AppAssets.wepayimg),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: themeController.bgColor.value,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset(AppAssets.leftarrow,color: AppColors.primaryText,),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: Text(
              MyText.chooseba,
              style: MyTextStyles.sora5(
                  fontsize: 26.sp, color: AppColors.primaryText),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Column(
            children: [
              Text(
                MyText.bankapprove,
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),
              SearchBarWidget(
                hintText: "Home",
                onChanged: (value) {},
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          child: ListTile(
                            onTap: () {
                              Get.to(AccountDetailsFlowAccountDetails());
                            },
                            dense: true,
                            leading: Image.asset(items[index].imageUrl),
                            title: Text(
                              items[index].text,
                              style: MyTextStyles.sora(
                                  fontsize: 16.sp, color: AppColors.primaryText),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemData {
  final String text;
  final String imageUrl;

  ItemData(this.text, this.imageUrl);
}
