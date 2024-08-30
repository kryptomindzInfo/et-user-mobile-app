import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      @required this.color,
      @required this.text,
      @required this.onPressed,
  
      })
      : super(key: key);

  final Color? color;
  final Widget? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 327.w,
      height: 48.h,
      onPressed: onPressed,
      
      color: color,
      disabledElevation: 0,
      disabledColor: Get.theme.focusColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48.r)),
      elevation: 0,
      child: text,
    );
  }
}
