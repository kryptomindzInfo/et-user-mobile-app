import 'package:flutter/material.dart';

class MyTextStyles {
  static const String worksansFamily = "Work Sans";
  static const String soraFamily = "Sora";

  static TextStyle work({
    required double fontsize,
    required Color color,
  }) =>
      TextStyle(
          fontFamily: 'Work Sans',
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          letterSpacing: -0.8);
  static TextStyle workfont({
    required double fontsize,
    required Color color,
    required FontWeight fontWeight,

  }) =>
      TextStyle(
          fontFamily: 'Work Sans',
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: -0.64);

  static TextStyle worknormal({
    required double fontsize,
    required Color color,
  }) =>
      TextStyle(
          fontFamily: 'Work Sans',
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.64);
  static TextStyle sora({
    required double fontsize,
    required Color color,
  }) =>
      TextStyle(
          fontFamily: 'Sora',
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.8,
          fontStyle: FontStyle.normal);
  static TextStyle sora5({
    required double fontsize,
    required Color color,
  }) =>
      TextStyle(
          fontFamily: 'Sora',
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.8,
          fontStyle: FontStyle.normal);

  static TextStyle sorafont({
    required double fontsize,
    required Color color,
    required FontWeight fontWeight,
  }) =>
      TextStyle(
          fontFamily: 'Sora',
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: -0.8,
          fontStyle: FontStyle.normal);
}
