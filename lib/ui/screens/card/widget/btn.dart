
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class btn extends StatefulWidget {
  final String cardText; // Text content for the card
  final double cardWidth; // Width of the card
  final double cardHeight;
  Color? color; // Height of the card

  btn({
    required this.cardText,
    required this.cardWidth,
    required this.cardHeight,
    this.color,
  });

  @override
  State<btn> createState() => _btnState();
}

class _btnState extends State<btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      decoration: BoxDecoration(
        color: AppColors.primaryButton,
        borderRadius: BorderRadius.circular(48.r), 
      ),
      child: Center(
        child: Text(
          widget.cardText, 
          style: MyTextStyles.workfont(
            fontsize: 16.sp,
            color: AppColors.btnText, 
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
