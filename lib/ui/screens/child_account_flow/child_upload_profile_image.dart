import 'package:et_bank/controllers/signup/signup_dob_controller.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/global/widgets/button_widget.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_bottom_navigation.dart';
import 'package:et_bank/ui/screens/child_account_flow/child_camera_gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChildUploadProflieImage extends StatefulWidget {
  ChildUploadProflieImage({super.key});

  @override
  State<ChildUploadProflieImage> createState() => _ChildUploadProflieImageState();
}

class _ChildUploadProflieImageState extends State<ChildUploadProflieImage> {
  final ThemeController themeController = Get.put(ThemeController());
  SignupDOBController signupDOBController = Get.put(SignupDOBController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.childBlue,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColors.pink,
              height: 150.h,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 54, right: 21),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: themeController.bgColor.value,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 54),
                      child: Text(
                        MyText.UploadProfileimage,
                        style: TextStyle(
                            color: themeController.bgColor.value,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: MyTextStyles.soraFamily),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
              child: Container(
                height: 400.h,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ChildCameraOrGallery(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.childDarkBlue,
                              borderRadius: BorderRadius.circular(28)),
                          width: 240.w,
                          height: 290.h,
                          child: Image.asset(
                            AppAssets.child_camera_1,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Padding(
          padding: EdgeInsets.only(bottom: keyboardHeight),
          child: BottomAppBar(
            height: 150.h,
            elevation: 0,
            color: AppColors.pink,
            child: Center(
              child: SizedBox(
                height: 48.h,
                width: 327.w,
                child: ButtonWidget(
                    color: AppColors.childDarkBlue,
                    text: Text(
                      MyText.signupNamecontinue,
                      style: TextStyle(
                          color: AppColors.childDarkText,
                          fontFamily: MyTextStyles.worksansFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChildBottomNavigation()));
                    }),
              ),
            ),
          ),
        );
      }),
    );
  }
}
