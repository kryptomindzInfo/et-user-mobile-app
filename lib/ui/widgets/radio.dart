import 'package:et_bank/controllers/Radiobutton/radio.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class RadioRow extends StatelessWidget {
  final String label;
  
  final int index;
  final RadioController controller;

  RadioRow({
    required this.label,
  
    required this.index,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: (){
          controller.selectedRadio(index);
        },
        child: Container(
          width: 335.w,
          height: 71.h,
          decoration: BoxDecoration(
                    color: controller.getBackgroundColor(index),
                      borderRadius: BorderRadius.circular(27.r)
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
             
                 Radio(
                    value: index,
                    groupValue: controller.selectedRadio.value,
                    onChanged: (value) {
                      controller.selectedRadio(value);
                    },
                      activeColor: AppColors.primary, 
                 hoverColor: AppColors.lightgreyColor
                  ),
               
                 Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.ggreyColor
                  ),
                   child: Center(child: Image.asset(AppAssets.g,width: 14.96.w,height: 17.86.h,))
                    
                 
                     
                   ),
          
                 SizedBox(width: 7.w,),
                 Image.asset(AppAssets.ukesim,width: 24.w,height: 24.h,),
                  SizedBox(width: 10.w,),
                  
                   Text(label,style: MyTextStyles.worknormal(fontsize: 16.sp, color: AppColors.white),),
                
              ],
            ),
          ),
        ),
      );
    });
  }
}