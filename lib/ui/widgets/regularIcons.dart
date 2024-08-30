import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

class RegularIcons extends StatefulWidget {
  final Color? color;
  final String image;

  RegularIcons({
    this.color,
    required this.image,
  });

  @override
  State<RegularIcons> createState() => _RegularIconsState();
}

class _RegularIconsState extends State<RegularIcons> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.image,
      width: 24,
      height: 24,
      color: widget.color ?? AppColors.regularIcon,
    );
  }
}
