// import 'package:et_bank/controllers/accountDetails_Flow/accountdetailsflow_accountdetails_controller.dart';
// import 'package:et_bank/global/constants/colors.dart';
// import 'package:et_bank/global/widgets/Iconbutton_widget.dart';
// import 'package:et_bank/ui/resources/constant/app_assets.dart';
// import 'package:et_bank/ui/resources/constant/app_text.dart';
// import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
// import 'package:et_bank/ui/screens/accountdetails/accountdetails_reivew.dart';
// import 'package:et_bank/ui/screens/homescreens/widget/textform.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class AccountDetailsTransfer extends StatelessWidget {
//   AccountDetailsTransfer({super.key});

//   AccountDetailsFlowAccountDetailsController controller =
//       Get.put(AccountDetailsFlowAccountDetailsController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding:
//             const EdgeInsets.only(top: 65.0, left: 20, right: 20, bottom: 20),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 7.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       AppAssets.editprofile_pic,
//                       width: 34,
//                       height: 34,
//                     ),
//                     Text(
//                       MyText.Transfer,
//                       style: TextStyle(
//                           color: AppColors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: MyTextStyles.worksansFamily),
//                     ),
//                     ImageButtonWidget(
//                         padding: 5,
//                         height: 15.h,
//                         width: 15.w,
//                         text: MyText.new1,
//                         textStyle: TextStyle(
//                             color: themeController.bgColor.value,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                             fontFamily: MyTextStyles.worksansFamily),
//                         image: AppAssets.addBlack,
//                         color: AppColors.primary,
//                         onPressed: () {
//                           Navigator.pop(context);
//                         }),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 14.h,
//               ),
//               SearchBarWidget(
//                 suffixIcon: Image.asset(AppAssets.transfer_search),
//                 onChanged: (value) {},
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: ((context) =>
//                               AccountDetailsTransferReivew())));
//                 },
//                 child: Container(
//                   width: 349.w,
//                   decoration: BoxDecoration(
//                       color: AppColors.DarkGrey,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Padding(
//                     padding: const EdgeInsets.fromLTRB(17, 24, 24, 24),
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           AppAssets.Green,
//                           height: 43.h,
//                           width: 43.w,
//                         ),
//                         SizedBox(
//                           width: 17.w,
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               MyText.ShaunSheep,
//                               style: TextStyle(
//                                   color: AppColors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: MyTextStyles.worksansFamily),
//                             ),
//                             Text(
//                               MyText.Yousent1,
//                               style: TextStyle(
//                                   color: AppColors.accountSubTitle,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w400,
//                                   fontFamily: MyTextStyles.worksansFamily),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 95.w,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 24.0),
//                           child: Text(
//                             MyText.a1434,
//                             style: TextStyle(
//                                 color: AppColors.accountSubTitle,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w400,
//                                 fontFamily: MyTextStyles.worksansFamily),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
