import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/card/widget/btn.dart';
import 'package:et_bank/ui/screens/stock/stockpersonaldetail.dart';
import 'package:et_bank/ui/screens/stock/widget/readcarefullywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Readcarefully extends StatefulWidget {
  Readcarefully({super.key});

  @override
  State<Readcarefully> createState() => _ReadcarefullyState();
}

class _ReadcarefullyState extends State<Readcarefully> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    MyText.readcarefully,
                    style: MyTextStyles.sora5(
                      fontsize: 26.sp,
                      color: AppColors.primaryText,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.blackBox,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 20.h,
                        ),
                        child: Column(
                          children: [
                            Text(
                              MyText.stockinvestingwith,
                              style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              MyText.stockinvestingintrading,
                              style: MyTextStyles.workfont(
                                fontsize: 14.sp,
                                color: AppColors.greyText2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 1765.h,
                                  child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: titleDescriptions.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            titleDescriptions[index].title,
                                            style: MyTextStyles.workfont(
                                              fontsize: 14.sp,
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text(
                                            titleDescriptions[index]
                                                .description,
                                            style: MyTextStyles.workfont(
                                              fontsize: 14.sp,
                                              color: AppColors.greyText2,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 32.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(PersonalDetails());
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             PersonalDetails()));
                              },
                              child: btn(
                                cardText: 'Continue',
                                cardWidth: 327.w,
                                cardHeight: 48.h,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 25.w,
                      top: 400.h,
                      child: GestureDetector(
                        onTap: () {
                          _scrollController.animateTo(
                            _scrollController.position.maxScrollExtent,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Container(
                          width: 64.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                            color: AppColors.primaryButton,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              AppAssets.readarrow,
                              width: 25.12.w,
                              height: 17.94.h,
                              color: AppColors.btnText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
