import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class OrDivider extends StatefulWidget {
  @override
  State<OrDivider> createState() => _OrDividerState();
}

class _OrDividerState extends State<OrDivider> {
      final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "or",
              style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: AppColors.primaryText,
        height: 1.5,
      ),
    );
  }
}
