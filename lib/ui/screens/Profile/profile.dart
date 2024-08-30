import 'package:et_bank/controllers/singin/singin_mobileno_controller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/Profile/widget/accountdetail.dart';
import 'package:et_bank/ui/screens/Profile/widget/plan.dart';
import 'package:et_bank/ui/screens/Profile/widget/profilesetting.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_editprofile.dart';
import 'package:et_bank/ui/screens/onboarding/widget/onboarding8.dart';
import 'package:et_bank/ui/widgets/regularIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<Widget> textItems = [
    Text(MyText.upgrade,
        style: MyTextStyles.workfont(
            fontsize: 16.sp,
            color: AppColors.blackColor,
            fontWeight: FontWeight.w600) // Change the color as desired
        ),
    Text(MyText.invite,
        style: MyTextStyles.workfont(
            fontsize: 16.sp,
            color: AppColors.white,
            fontWeight: FontWeight.w600) // Change the color as desired
        ),
  ];

  final List<Color> containerColors = [
    AppColors.yellowButton2,
    AppColors.inActiveTabButtons1
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: themeController.bgColor.value,
        appBar: AppBar(
          backgroundColor: themeController.bgColor.value,
          leading: GestureDetector(
            onTap: () {
              navigator?.pop(context);
            },
            child:
                Image.asset(AppAssets.leftarrow, color: AppColors.primaryText),
          ),
          title: Text(
            "Alina James",
            style: MyTextStyles.worknormal(
                fontsize: 16.sp, color: AppColors.primaryText),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Text(
                    MyText.Profilename,
                    style: MyTextStyles.sora(
                      fontsize: 40.sp,
                      color: AppColors.primaryText,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AccountSettingsEditProfile()));
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      child: Image.asset(
                        AppAssets.appbar1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Text(MyText.Profileuser,
                  style: MyTextStyles.workfont(
                      fontsize: 14.sp,
                      color: AppColors.greenText,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 39.h,
                child: ListView.builder(
                  itemCount: textItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        decoration: BoxDecoration(
                          color: containerColors[
                              index], // Change to your desired color
                          borderRadius: BorderRadius.circular(70.r),
                        ),
                        child: Center(
                          child: textItems[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              planWidget(),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 349.w,
                height: 65.h,
                decoration: BoxDecoration(
                  color: AppColors.greyBox,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(children: [
                    Container(
                      width: 50.w,
                      height: 25.h,
                      child: CircleAvatar(
                        backgroundColor: AppColors.regularIcon,
                        child: Text("?",style: TextStyle(color: AppColors.white),),
                      ),
                    ),
                    Text(
                      MyText.help,
                      style: MyTextStyles.worknormal(
                          fontsize: 16.sp, color: AppColors.primaryText),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                MyText.accdetail,
                style: MyTextStyles.sora(
                    fontsize: 16.sp, color: AppColors.primaryText),
              ),
              SizedBox(
                height: 20.h,
              ),
              Accountdetail(),
              SizedBox(
                height: 20.h,
              ),
              profilesetting(),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(onboarding8());
                },
                child: Container(
                  width: 349.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    color: AppColors.greyBox,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Row(
                      children: [
                        RegularIcons(image:AppAssets.logout,),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          MyText.logout,
                          style: MyTextStyles.worknormal(
                            fontsize: 16.sp,
                            color: AppColors.primaryText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
