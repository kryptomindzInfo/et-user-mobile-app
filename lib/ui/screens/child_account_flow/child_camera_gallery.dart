import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/screens/addAccount/widgets/small_rounded_container.dart';
import 'package:et_bank/ui/screens/child_account_flow/widgets/camera_or_gallery_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

void ChildCameraOrGallery(BuildContext context) {
  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    try {
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        // Do something with the picked image file
        print('Image path: ${pickedFile.path}');
      } else {
        // User canceled the image picking
        print('Image picking canceled.');
      }
    } catch (e) {
      // Handle errors
      print('Error picking image: $e');
    }
  }

  showModalBottomSheet(
    backgroundColor: AppColors.buttongrey,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            color: AppColors.childYellow,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 250.h,
        width: 390.w,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 11.0, left: 41, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallRoundedContainerWidget(
                color: AppColors.childDarkBlue,
              ),
              SizedBox(
                height: 34.h,
              ),
              CameraOrGalleryWidget(
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              CameraOrGalleryWidget(
                image: AppAssets.child_gallery,
                text: MyText.OpenGallery,
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
