import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/stock/employmentstatus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Uknational extends StatefulWidget {
  const Uknational({super.key});

  @override
  State<Uknational> createState() => _UknationalState();
}

class _UknationalState extends State<Uknational> {
  final TextEditingController _textEditingController = TextEditingController();
  final ThemeController themeController = Get.put(ThemeController());
  bool hasText = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_textFieldListener);
  }

  void _textFieldListener() {
    setState(() {
      hasText = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 40.h),
                          child: Image.asset(
                            AppAssets.leftarrow,
                            width: 25.12.w,
                            height: 17.94.h,
                            color: AppColors.primaryText,
                          ),
                        )),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      MyText.Uknational,
                      style: MyTextStyles.sora5(
                        fontsize: 26.sp,
                        color: AppColors.primaryText,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                MyText.thisisUknational,
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 351.w,
                height: 61.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: AppColors.greyBox,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                  child: TextField(
                    controller: _textEditingController,
                    maxLines: 3,
                    textAlignVertical: TextAlignVertical(
                      y: -1,
                    ),
                    inputFormatters: [
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        if (newValue.text.length > oldValue.text.length) {
                          final String text = newValue.text
                              .replaceAll(' ', ''); // Remove spaces
                          String result = '';

                          for (int i = 0; i < text.length; i += 2) {
                            if (i + 2 <= text.length) {
                              result += '${text.substring(i, i + 2)} ';
                            } else {
                              result += text.substring(i);
                            }
                          }

                          return TextEditingValue(
                            text: result.trim(),
                            selection:
                                TextSelection.collapsed(offset: result.length),
                          );
                        }
                        return newValue;
                      }),
                    ],
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: -2,
                      ),
                      labelText: MyText.uknational,
                      labelStyle: MyTextStyles.workfont(
                          fontsize: 16.sp,
                          color: AppColors.greyText2,
                          fontWeight: FontWeight.w400), // ,
                      hintText: '',
                      hintStyle: TextStyle(height: 1.5, color: AppColors.greyText2),

                      border: InputBorder.none,
                    ),
                    onChanged: (text) {},
                  ),
                ),
              ),
              Text(
                "for example, AB 12 34 56 C",
                style: MyTextStyles.workfont(
                    fontsize: 14.sp,
                    color: AppColors.greyText2,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
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
                      color: hasText
                          ? AppColors.primaryButton
                          : AppColors.disableButton,
                      text: Text(
                        "Continue",
                        style: TextStyle(
                            color: hasText
                                ? AppColors.btnText
                                : AppColors.disableBtnText,
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Get.to(Employmentstatus());
                      }),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
