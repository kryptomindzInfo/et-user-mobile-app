import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CheckOutFirstCard extends StatefulWidget {
  String? card;
  String? price;

  CheckOutFirstCard({super.key, this.card, this.price});

  @override
  State<CheckOutFirstCard> createState() => _CheckOutFirstCardState();
}

class _CheckOutFirstCardState extends State<CheckOutFirstCard> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.card!,
          style: TextStyle(
              color: AppColors.greyText2,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'WorkSans'),
        ),
        Text(
          widget.price!,
          style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'WorkSans'),
        ),
      ],
    );
  }
}
