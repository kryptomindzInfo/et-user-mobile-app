import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget(
      {Key? key,
      @required this.color,
      @required this.text,
      @required this.onPressed,
      this.borderRadius,
      this.height,
      this.minwidth})
      : super(key: key);

  final Color? color;
  final Widget? text;
  final VoidCallback? onPressed;
  double? borderRadius;
  double? height;
  double? minwidth;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: widget.height,
      minWidth: widget.minwidth,
      onPressed: widget.onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      color: widget.color,
      disabledElevation: 0,
      disabledColor: Get.theme.focusColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 48)),
      elevation: 0,
      child: widget.text,
    );
  }
}
