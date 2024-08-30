import 'package:et_bank/controllers/theme/theme_contrtoller.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/accountdetails/accountdetails_gbp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final ThemeController themeController = Get.put(ThemeController());

void AccountDetailsLoading(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: themeController.bgColor.value,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => AccountDetailsGBP(),
        ));
      });
      return Container(
        width: 350.w,
        height: 350.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(27, 25, 27, 0),
          child: Column(
            children: [
              SizedBox(
                height: 39.h,
              ),
              Container(
                  width: 110.w,
                  height: 110.h,
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                  )),
              SizedBox(
                height: 32.h,
              ),
              Text(
                MyText.Accountnamematched,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: themeController.bgColor.value,
                    fontFamily: MyTextStyles.soraFamily,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                MyText.Accountnamematchedsubtitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.grey,
                    fontFamily: MyTextStyles.worksansFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 46,
              ),
            ],
          ),
        ),
      );
    },
  );
}






// import 'package:et_bank/global/constants/colors.dart';
// import 'package:et_bank/ui/resources/constant/app_text.dart';
// import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
// import 'package:et_bank/ui/screens/accountdetails/accountdetails_gbp.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AccountDetailsLoading extends StatelessWidget {
//   AccountDetailsLoading({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 2), () {
//       Navigator.of(context).pushReplacement(MaterialPageRoute(
//         builder: (context) => AccountDetailsGBP(),
//       ));
//     });

//     return Scaffold(
//       backgroundColor: themeController.bgColor.value,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(20, 95, 20, 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: AppColors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Builder(builder: (context) {
//         final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
//         return Padding(
//           padding: EdgeInsets.only(bottom: keyboardHeight),
//           child: BottomAppBar(
//             height: 380.h,
//             elevation: 0,
//             color: themeController.bgColor.value,
//             child: Center(
//               child: Column(
//                 children: [
//                   Container(
//                     width: 350.w,
//                     height: 350.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(22),
//                       color: AppColors.white,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(27, 25, 27, 0),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 39.h,
//                           ),
//                           Container(
//                               width: 110.w,
//                               height: 110.h,
//                               child: CircularProgressIndicator(
//                                 color: AppColors.primary,
//                               )),
//                           SizedBox(
//                             height: 32.h,
//                           ),
//                           Text(
//                             MyText.Accountnamematched,
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: themeController.bgColor.value,
//                                 fontFamily: MyTextStyles.soraFamily,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(
//                             height: 16,
//                           ),
//                           Text(
//                             MyText.Accountnamematchedsubtitle,
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: AppColors.grey,
//                                 fontFamily: MyTextStyles.worksansFamily,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                           SizedBox(
//                             height: 46,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
