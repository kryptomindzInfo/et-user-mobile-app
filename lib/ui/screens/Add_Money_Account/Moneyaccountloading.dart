import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/Bottomnavigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Moneyaccountloading extends StatefulWidget {
  const Moneyaccountloading({super.key});

  @override
  State<Moneyaccountloading> createState() => _MoneyaccountloadingState();
}

class _MoneyaccountloadingState extends State<Moneyaccountloading> {
  final ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => btmnavigation(),
      ));
    });

    return Scaffold(
      backgroundColor: themeController.bgColor.value,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(
        builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Obx(
            () => Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                height: 320.h,
                elevation: 0,
                color: themeController.bgColor.value,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 350.w,
                        height: 280.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: AppColors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20.w, 25.h, 13.w, 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 39.h,
                              ),
                              Container(
                                width: 110.w,
                                height: 110.h,
                                child: CircularProgressIndicator(
                                  color: AppColors.greenText,
                                ),
                              ),
                              SizedBox(
                                height: 21.h,
                              ),
                              Text(
                                MyText.yourtransaction,
                                style: TextStyle(
                                  color: AppColors.greyText2,
                                  fontFamily: 'WorkSans',
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
