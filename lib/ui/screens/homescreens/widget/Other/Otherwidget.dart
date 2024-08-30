import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/homescreens/widget/Other/otherreferencescreen.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/widgets/regularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Otherswidget extends StatefulWidget {
  Otherswidget({super.key});

  @override
  State<Otherswidget> createState() => _OtherswidgetState();
}

class _OtherswidgetState extends State<Otherswidget> {
  final List<Map<String, dynamic>> dataList = [
    {'text': 'Net Worth', 'image': AppAssets.networthother},
    {'text': 'Analytics', 'image': AppAssets.analyticother},
    {'text': 'XP Level Bar', 'image': AppAssets.xplevelother},
    {'text': 'Insurance', 'image': AppAssets.insuranceother},
    {'text': 'Shops', 'image': AppAssets.shopother},
    {'text': 'Salary', 'image': AppAssets.salaryother},
    {'text': 'Gifts', 'image': AppAssets.giftsother},
    {'text': 'Donations', 'image': AppAssets.donationother},
    {'text': 'Searches', 'image': AppAssets.searchesother},
    {'text': 'Customer Service', 'image': AppAssets.customerother},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            width: 349.w,
            height: 577.h,
            decoration: BoxDecoration(
              color: AppColors.greyBox,
              borderRadius: BorderRadius.circular(28.r),
            ),
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ReferenceScreen(selectedIndex: index),
                      ),
                    );
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                    child: Row(
                      children: [
                        RegularIcons(image: dataList[index]['image'],),
                          // Image.asset(
                          //   dataList[index]['image'],
                          //   width: 24.w,
                          //   height: 26.87.h,
                          //   fit: BoxFit.cover,
                          //   filterQuality: FilterQuality.high,
                          //   color: AppColors.greenText3,
                          // ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          dataList[index]['text'],
                          style: MyTextStyles.workfont(
                              fontsize: 16.sp,
                              color: AppColors.primaryText,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
