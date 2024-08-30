import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

class ActionChipWidget extends StatefulWidget {
  Color? backgroundcolor;
  final MaterialStateProperty<Color?>? color;
  final Color? textColor;
  VoidCallback? onPressed;

  String? image;
  String? labelText;

  ActionChipWidget(
      {super.key,
      this.color,
      required this.textColor,
      this.image,
      this.labelText,
      this.onPressed,
      this.backgroundcolor});

  @override
  State<ActionChipWidget> createState() => _ActionChipWidgetState();
}

class _ActionChipWidgetState extends State<ActionChipWidget> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: widget.onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(48),

        ),
      ),
      // side: BorderSide(),
      avatar: Image.asset(
        widget.image!,
      ),
      label: Text(
        widget.labelText!,
        style: TextStyle(color: widget.textColor),
      ),
      backgroundColor: widget.backgroundcolor ?? AppColors.grey,
    );
  }
}
