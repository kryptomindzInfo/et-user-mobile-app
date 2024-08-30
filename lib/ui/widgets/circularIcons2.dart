import 'package:flutter/material.dart';

class CircularIcons2 extends StatefulWidget {
  final Color? color;
  // final Color? imageColor;
  final String image;

  CircularIcons2({
    required this.color,
    // this.imageColor,
    required this.image,
  });

  @override
  State<CircularIcons2> createState() => _CircularIcons2State();
}

class _CircularIcons2State extends State<CircularIcons2> {
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
          // color: widget.imageColor ?? AppColors.circleIcon,
        ),
      ),
    );
  }
}
