import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageButtonWidget extends StatefulWidget {
  ImageButtonWidget(
      {Key? key,
      @required this.color,
      this.text,
      @required this.onPressed,
      required this.textStyle,
      required this.image,
      this.width,
      this.height,
      this.padding})
      : super(key: key);

  final Color? color;
  final String? text;
  double? height;
  double? width;
  double? padding;
  final VoidCallback? onPressed;
  final String image;
  TextStyle textStyle;

  @override
  State<ImageButtonWidget> createState() => _ImageButtonWidgetState();
}

class _ImageButtonWidgetState extends State<ImageButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.color,
      ),
      onPressed: widget.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.image,
            width: widget.width ?? 80.w,
            height: widget.height ?? 120.h,
          ),
          SizedBox(
            width: widget.padding,
          ),
          Text(
            widget.text ?? '',
            style: widget.textStyle,
          ),
        ],
      ),
    );
  }
}
