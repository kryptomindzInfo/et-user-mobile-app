import 'package:et_bank/controllers/Localization/localization_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/ui/screens/onboarding/PageView.dart';
import 'package:et_bank/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(MyApp());

  // Future.delayed(Duration(seconds: 3), () {
  //   FlutterNativeSplash.remove();
  // }).whenComplete(
  //   () => runApp(
  //     MyApp(),
  //   ),
  // );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeController themeController = Get.put(ThemeController());
  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        // Check if selectedLocale is null and provide a default value if it is
        Locale locale = languageController.selectedLocale ?? Locale('en');

        return Obx(() => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'ET-Bank',
              locale: locale,
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('en'), // English
                Locale('es'), // Spanish
              ],
              theme: ThemeData(
                scaffoldBackgroundColor: themeController.bgColor.value,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
                useMaterial3: true,
              ),
              home: const SplashScreen(),
              // home: MyPageView(),
            ));
      },
    );
  }
}
