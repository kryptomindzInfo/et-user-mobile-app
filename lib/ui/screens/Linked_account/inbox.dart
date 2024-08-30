import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:get/get.dart';

class Linkinbox extends StatelessWidget {
  const Linkinbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(

    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.buttongrey,
      borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.r), 
     topRight: Radius.circular(30.r), 
        ),
        
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                
          
           InkWell(
            onTap: (){
              Get.back();
            },
            child: Image.asset(AppAssets.exit,color: AppColors.white,)),
           SizedBox(height: 20.h,),
           Text(MyText.linkinbox,style: MyTextStyles.sora5(fontsize: 32.sp, color: AppColors.white),)
       
         
    
       
         
        ],
        ),
      ),
    ),
    ));
  }
}