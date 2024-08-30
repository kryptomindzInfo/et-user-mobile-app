import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_text.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/customer_services_flow/widgets/customerservice_question_widget.dart';
import 'package:et_bank/ui/widgets/searchtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:et_bank/controllers/theme/theme_contrtoller.dart';

class CustomerServicesFAQs extends StatefulWidget {
  CustomerServicesFAQs({super.key});

  @override
  State<CustomerServicesFAQs> createState() => _CustomerServicesFAQsState();
}

class _CustomerServicesFAQsState extends State<CustomerServicesFAQs> {
  final ThemeController themeController = Get.put(ThemeController());

  List<String> questions = [
    "How do I open an account with ET Bank?",
    'What types of accounts does ET Bank offer?',
    "How do I open an account with ET Bank?",
    "How can I contact ET Bank customer support?",
    "What is the process for getting a credit card with ET Bank?",
    "How can I manage my subscriptions within the ET Bank?",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: AppBar(
            backgroundColor: themeController.bgColor.value,
            leading: Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      AppAssets.leftarrow,
                      width: 25.12.w,
                      height: 17.94.h,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            title: Text(
              MyText.CustomerServices,
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  fontFamily: MyTextStyles.soraFamily),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBarWidget(
                    hintText: "Home",
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    height: 650.h,
                    child: ListView.builder(
                        itemCount: questions.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CustomerServiceQuestionWidget(
                                index: index,
                                title: questions[index],
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
