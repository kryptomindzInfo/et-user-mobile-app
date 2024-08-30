import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularIcons extends StatefulWidget {
  final Color? color;
  final Color? imageColor;
  final String image;

  CircularIcons({
    required this.color,
    this.imageColor,
    required this.image,
  });

  @override
  State<CircularIcons> createState() => _CircularIconsState();
}

class _CircularIconsState extends State<CircularIcons> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        maxRadius: 25,
      backgroundColor: widget.color?.withOpacity(0.29),
      child: ClipOval(
        child: Image.asset(
          widget.image,
          width: 50,
          height: 50,
          color: widget.imageColor ?? AppColors.circleIcon,
        ),
      ),
    );
  }
}
