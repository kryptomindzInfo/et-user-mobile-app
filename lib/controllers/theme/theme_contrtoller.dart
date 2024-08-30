import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';

enum ThemeModeType { system, light, dark }

class ThemeController extends GetxController {
  var themeMode = ThemeModeType.system.obs;
  var myThemeBool = true.obs;
  final box = GetStorage();

  final Map<String, Color> lightColors = {
    "bgColor": Color(0xffFFFFFF),
  };

  final Map<String, Color> darkColors = {
    "bgColor": Color(0xFF0C2227),
  };

  final bgColor = Color(0xffFFFFFF).obs;

  ThemeController() {
    final storedThemeMode = box.read('themeMode') ?? ThemeModeType.system.index;
    themeMode.value = ThemeModeType.values[storedThemeMode];
    applyTheme(themeMode.value);
  }

  Color getColorBasedOnTheme(
      ThemeModeType mode, Color darkColor, Color lightColor) {
    if (mode == ThemeModeType.dark) {
      return darkColor;
    } else if (mode == ThemeModeType.light) {
      return lightColor;
    } else {
      return (WidgetsBinding.instance.window.platformBrightness ==
              Brightness.dark)
          ? darkColor
          : lightColor;
    }
  }

  String getImageBasedOnTheme(
      ThemeModeType mode, String darkColor, String lightColor) {
    if (mode == ThemeModeType.dark) {
      return darkColor;
    } else if (mode == ThemeModeType.light) {
      return lightColor;
    } else {
      return (WidgetsBinding.instance.window.platformBrightness ==
              Brightness.dark)
          ? darkColor
          : lightColor;
    }
  }

  void applyTheme(ThemeModeType mode) {
    themeMode.value = mode;
    box.write('themeMode', mode.index);

    //  Text Colors

    AppColors.blackText =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFFFFFFFF));
    AppColors.whiteText =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFFFFFFFF));
    AppColors.primaryText =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFF000000));
    AppColors.veryLightGreyText =
        getColorBasedOnTheme(mode, Color(0xB1FFFFFF), Color(0x96000000));
    AppColors.greenText =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFF07BE66));
    AppColors.greenText2 =
        getColorBasedOnTheme(mode, Color(0xFF070707), Color(0xFF07BE66));
    AppColors.greenText3 =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFF000000));
    AppColors.graphText =
        getColorBasedOnTheme(mode, Color(0xFF6F6F70), Color(0xFF6F6F70));
    AppColors.inactivetabText =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFFFFFFFF));
    AppColors.activetabText =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFF000000));
    AppColors.activetabText2 =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFF000000));
    AppColors.yellowText =
        getColorBasedOnTheme(mode, Color(0xFFDEFC65), Color(0xFF0C2227));
    AppColors.darkGreyText =
        getColorBasedOnTheme(mode, Color(0xFF3F3F3F), Color(0xFF3F3F3F));
    AppColors.lightGreyText =
        getColorBasedOnTheme(mode, Color(0xFF6F6F70), Color(0xFFBEBEBE));
    AppColors.greyText1 =
        getColorBasedOnTheme(mode, Color(0xFFDADADA), Color(0xFF6F6F70));
    AppColors.greyText2 =
        getColorBasedOnTheme(mode, Color(0xFFBEBEBE), Color(0xFF6F6F70));
    AppColors.greyText3 =
        getColorBasedOnTheme(mode, Color(0xFFBEBEBE), Color(0xFFFFFFFF));
    AppColors.disableBtnText =
        getColorBasedOnTheme(mode, Color(0xFF7E7878), Color(0xFF6F6F70));
    AppColors.btnText =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFF000000));

    // Button Colors ==============================================

    AppColors.activeTabButtons =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFFDEFC65));
    AppColors.inActiveTabButtons1 =
        getColorBasedOnTheme(mode, Color(0xFF1E1E1E), Color(0xFF215864));
    AppColors.inActiveTabButtons2 =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFF215864));
    AppColors.inActiveTabButtons3 =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFFFFFFFF));
    // AppColors.inActiveTabButtons4 =
    //     getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFFFFFFFF));
    AppColors.primaryButton =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFF07BE66));
    AppColors.disableButton =
        getColorBasedOnTheme(mode, Color(0xFF87AE8A), Color(0xFFBEBEBE));
    AppColors.blackButton =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFF0C2227));
    AppColors.secondaryButton =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFF215864));
    AppColors.secondaryButton2 =
        getColorBasedOnTheme(mode, Color(0xFF1E1E1E), Color(0xFF215864));
    AppColors.yellowButton =
        getColorBasedOnTheme(mode, Color(0xFFDEFC65), Color(0xFF215864));
    AppColors.yellowButton2 =
        getColorBasedOnTheme(mode, Color(0xFFDEFC65), Color(0xFFDEFC65));
    AppColors.yellowButton3 =
        getColorBasedOnTheme(mode, Color(0xFFDEFC65), Color(0xFF0C2227));
    AppColors.whiteButton =
        getColorBasedOnTheme(mode, Color(0xFF0C2227), Color(0xFF07BE66));
    AppColors.whiteButton2 =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFF0C2227));
    AppColors.darkGreen =
        getColorBasedOnTheme(mode, Color(0x8B07BE66), Color(0x87215864));

    // Text Field ============================
    AppColors.PrimaryTextField =
        getColorBasedOnTheme(mode, Color(0xFF1E1E1E), Color(0xFFDFE1E2));
    AppColors.circleIcon =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFF0C2227));
    AppColors.regularIcon =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFF215864));

    // background Colors

    AppColors.backgroundBox =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFFF6F6F6));
    AppColors.greenBox =
        getColorBasedOnTheme(mode, Color(0xFF07BE66), Color(0xFFEAEAEA));
    AppColors.greenBox2 =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFFEAEAEA));
    AppColors.allBoxes =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFFEEEEEE));
    AppColors.blackBox =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFFEAEAEA));
    AppColors.blackBox2 =
        getColorBasedOnTheme(mode, Color(0xFF000000), Color(0xFFA8A8A8));
    AppColors.greyBox =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFFEAEAEA));
    AppColors.greyBox2 =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFF2D3235));
    AppColors.addressBox =
        getColorBasedOnTheme(mode, Color(0xFF1E1E1E), Color(0xFFDFE1E2));
    AppColors.dropdownBox =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFF215864));
    AppColors.analyticsBox =
        getColorBasedOnTheme(mode, Color(0xFF292D32), Color(0xFFFFFFFF));
    AppColors.whiteBox =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0x1CEEEEEE));
    AppColors.whiteBox2 = getColorBasedOnTheme(
        mode, Color(0xFFFFFFFF), Color.fromARGB(255, 143, 143, 143));
    AppColors.whiteBox3 =
        getColorBasedOnTheme(mode, Color(0xFF2D3235), Color(0xFF8F8F8F));
    AppColors.whiteBox4 =
        getColorBasedOnTheme(mode, Color(0xFFFFFFFF), Color(0xFF215864));

    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================
    // ==============================================

    AppColors.blackColor = getColorBasedOnTheme(
        mode, Color(0xff000000), Color.fromARGB(255, 18, 5, 5));
    AppColors.lightgreyColor =
        getColorBasedOnTheme(mode, Color(0xffD9D9D9), Color(0xFFFFFFFF));
    AppColors.maincolor =
        getColorBasedOnTheme(mode, Color(0xff0C1EC4), Color(0xff0C1EC4));
    AppColors.white =
        getColorBasedOnTheme(mode, Color(0xffFFFFFF), Color(0xFFFFFFFF));
    AppColors.grey =
        getColorBasedOnTheme(mode, Color(0xff6F6F70), Color(0xff6F6F70));
    AppColors.primary =
        getColorBasedOnTheme(mode, Color(0xff07BE66), Color(0xff07BE66));
    AppColors.buttonDisabled =
        getColorBasedOnTheme(mode, Color(0xff87AE8A), Color(0xB90C2227));
    AppColors.buttonDisabledTextColor =
        getColorBasedOnTheme(mode, Color(0xff7E7878), Color(0xff7E7878));
    AppColors.buttongrey =
        getColorBasedOnTheme(mode, Color(0xff2D3235), Color(0xFF000000));
    AppColors.continueButtonDisable =
        getColorBasedOnTheme(mode, Color(0xff87AE8A), Color(0xBD87AE8A));
    AppColors.textFieldBorderColor =
        getColorBasedOnTheme(mode, Color(0x7F6F6F70), Color(0x80000000));
    AppColors.buttonDisableChooseAccount =
        getColorBasedOnTheme(mode, Color(0xff575757), Color(0xBF0C2227));
    AppColors.lightGrey =
        getColorBasedOnTheme(mode, Color(0xffE3E5E5), Color(0xffE3E5E5));
    AppColors.yellow =
        getColorBasedOnTheme(mode, Color(0xffE6FE4C), Color(0xffE6FE4C));
    AppColors.accountBenCardtextcolor =
        getColorBasedOnTheme(mode, Color(0xffB6B6B6), Color(0xFF000000));
    AppColors.red =
        getColorBasedOnTheme(mode, Color(0xffD80027), Color(0xffD80027));
    AppColors.verylightgrey =
        getColorBasedOnTheme(mode, Color(0xff96989A), Color(0xff96989A));
    AppColors.ggreyColor =
        getColorBasedOnTheme(mode, Color(0xff87AE8A), Color(0xff0C2227));
    AppColors.linearyellow =
        getColorBasedOnTheme(mode, Color(0xffD5E756), Color(0xffD5E756));
    AppColors.linearwhite =
        getColorBasedOnTheme(mode, Color(0xff9A9A9A), Color(0xff9A9A9A));
    AppColors.lightredColor =
        getColorBasedOnTheme(mode, Color(0xffB46228), Color(0xffB46228));
    AppColors.lgrey =
        getColorBasedOnTheme(mode, Color(0xff4B4B4C), Color(0xff4B4B4C));
    AppColors.lineargreen =
        getColorBasedOnTheme(mode, Color(0xff8FFF30), Color(0xff8FFF30));
    AppColors.rgblwhite =
        getColorBasedOnTheme(mode, Color(0xffE0E3E7), Color(0xffE0E3E7));
    AppColors.rgblpink =
        getColorBasedOnTheme(mode, Color(0xffE13BA8), Color(0xffE13BA8));
    AppColors.rgbldarkbl =
        getColorBasedOnTheme(mode, Color(0xff1E1E1E), Color(0xff1E1E1E));
    AppColors.DarkGrey =
        getColorBasedOnTheme(mode, Color(0xff292D32), Color(0xff292D32));
    AppColors.transferCancelButton =
        getColorBasedOnTheme(mode, Color(0xffD9D9D9), Color(0xffD9D9D9));
    AppColors.transferSearchBar =
        getColorBasedOnTheme(mode, Color(0xff1E1E1E), Color(0xff1E1E1E));
    AppColors.qrbgcolor =
        getColorBasedOnTheme(mode, Color(0xffA0A0A0), Color(0xffA0A0A0));
    AppColors.circle2 =
        getColorBasedOnTheme(mode, Color(0xff29337A), Color(0xff29337A));
    AppColors.circle3 =
        getColorBasedOnTheme(mode, Color(0xff027DBA), Color(0xff027DBA));
    AppColors.circle4 =
        getColorBasedOnTheme(mode, Color(0xffD9D9D9), Color(0xffD9D9D9));
    AppColors.coinup =
        getColorBasedOnTheme(mode, Color(0xff2C64E3), Color(0xff2C64E3));
    AppColors.coindown =
        getColorBasedOnTheme(mode, Color(0xffD80027), Color(0xffD80027));
    AppColors.staketoearnbtn =
        getColorBasedOnTheme(mode, Color(0xffDADADA), Color(0xffDADADA));
    AppColors.pink =
        getColorBasedOnTheme(mode, Color(0xffFFA4AC), Color(0xffFFA4AC));
    AppColors.childBlue =
        getColorBasedOnTheme(mode, Color(0xffA089E4), Color(0xffA089E4));
    AppColors.childText =
        getColorBasedOnTheme(mode, Color(0xff323252), Color(0xff323252));
    AppColors.childDarkBlue =
        getColorBasedOnTheme(mode, Color(0xff5D5E9E), Color(0xff5D5E9E));
    AppColors.childDarkText =
        getColorBasedOnTheme(mode, Color(0xff7E7878), Color(0xff7E7878));
    AppColors.childYellow =
        getColorBasedOnTheme(mode, Color(0xffF8DE8A), Color(0xffF8DE8A));
    AppColors.graphaxis =
        getColorBasedOnTheme(mode, Color(0xffBABCBE), Color(0xffBABCBE));
    AppColors.rgbyellowlight = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(230, 254, 76, 0.294),
        Color.fromRGBO(230, 254, 76, 0.294));
    AppColors.rgbgreywhite = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(255, 255, 255, 0.808),
        Color.fromRGBO(255, 255, 255, 0.808));
    AppColors.halfBlack = getColorBasedOnTheme(
        mode, Color.fromRGBO(0, 0, 0, 0.494), Color.fromRGBO(0, 0, 0, 0.494));
    AppColors.accountSubTitle = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(255, 255, 255, 0.494),
        Color.fromRGBO(255, 255, 255, 0.494));
    AppColors.changeIconGreen = getColorBasedOnTheme(mode,
        Color.fromRGBO(47, 254, 62, 0.094), Color.fromRGBO(47, 254, 62, 0.094));
    AppColors.darkYellow = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(230, 254, 76, 0.494),
        Color.fromRGBO(230, 254, 76, 0.494));
    AppColors.menucolor = getColorBasedOnTheme(
        mode, Color.fromRGBO(0, 0, 0, 0.333), Color.fromRGBO(0, 0, 0, 0.333));
    AppColors.rgblack = getColorBasedOnTheme(
        mode, Color.fromRGBO(7, 7, 7, 0.502), Color.fromRGBO(7, 7, 7, 0.502));
    AppColors.rgbGREEN = getColorBasedOnTheme(mode,
        Color.fromRGBO(61, 254, 76, 0.282), Color.fromRGBO(61, 254, 76, 0.282));
    AppColors.rgbogrey = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(255, 255, 255, 0.094),
        Color.fromRGBO(255, 255, 255, 0.094));
    AppColors.buybutton = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(230, 254, 76, 0.494),
        Color.fromRGBO(230, 254, 76, 0.494));
    AppColors.polkadotDisabletext = getColorBasedOnTheme(
        mode, Color.fromRGBO(75, 75, 76, 0), Color.fromRGBO(75, 75, 76, 0));
    AppColors.polkadotstatswidgettext = getColorBasedOnTheme(mode,
        Color.fromRGBO(190, 190, 190, 0), Color.fromRGBO(190, 190, 190, 0));
    AppColors.lightRed = getColorBasedOnTheme(
        mode,
        Color.fromRGBO(255, 169, 184, 0.294),
        Color.fromRGBO(255, 169, 184, 0.294));

    // =================== getting Images  // ==================== //

    AppAssets.etbankLogo = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}ET bank logo.png",
        "${AppAssets.imagesDir}ET bank logo Dark.png");
    AppAssets.onboarding2 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 2.png",
        "${AppAssets.imagesDir}Mask group 2 Light.png");
    AppAssets.onboarding3 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 3.png",
        "${AppAssets.imagesDir}Mask group 3 light.png");

    AppAssets.onboarding4 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 4.png",
        "${AppAssets.imagesDir}Mask group 4 light.png");
    AppAssets.onboarding5 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 5.png",
        "${AppAssets.imagesDir}Mask group 5 light.png");
    AppAssets.onboarding6 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Group 979.png",
        "${AppAssets.imagesDir}Group 979 light.png");
    AppAssets.onboarding7 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 7.png",
        "${AppAssets.imagesDir}Mask group 7 light.png");
    AppAssets.onboarding8 = getImageBasedOnTheme(
        mode,
        "${AppAssets.imagesDir}Mask group 8.png",
        "${AppAssets.imagesDir}Mask group 8 light.png");

    var colors = (mode == ThemeModeType.dark)
        ? darkColors
        : (mode == ThemeModeType.light)
            ? lightColors
            : (WidgetsBinding.instance.window.platformBrightness ==
                    Brightness.dark)
                ? darkColors
                : lightColors;

    bgColor.value = colors["bgColor"]!;

    // _updateLogoPath();
  }

  // void _updateLogoPath() {
  //   var brightness = WidgetsBinding.instance.window.platformBrightness;
  //   var isSystemDarkMode = brightness == Brightness.dark;
  //   AppAssets.etbankLogo = (themeMode.value == ThemeModeType.dark ||
  //           (themeMode.value == ThemeModeType.system && isSystemDarkMode))
  //       ? "${AppAssets.imagesDir}ET bank logo.png"
  //       : "${AppAssets.imagesDir}ET bank logo Dark.png";
  // }

  @override
  void onInit() {
    super.onInit();
    applyTheme(
        themeMode.value); // Apply the theme when the controller is initialized
  }
}
