import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.yellowButton,
      child: Icon(
        Icons.theater_comedy,
        color: AppColors.blackText,
      ),
      onPressed: () {
        if (themeController.myThemeBool == true) {
          themeController.myThemeBool.value = false;
          themeController.applyTheme(ThemeModeType.dark);
          setState(() {});
        } else {
          themeController.myThemeBool.value = true;
          themeController.applyTheme(ThemeModeType.light);
          setState(() {});
        }
        // ref.read(themeProvider.notifier).toggle();
      },
    );
  }
}
