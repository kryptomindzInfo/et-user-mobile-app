import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_assets.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:et_bank/ui/screens/account_settings/account_settings_converter.dart';
import 'package:et_bank/ui/screens/addAccount/add_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShowMoreMenuWidget extends StatelessWidget {
  const ShowMoreMenuWidget({super.key});

  void showDropdownList(BuildContext context) {
    final items = [
      {'icon': AppAssets.converter_icon, 'text': 'Converter'},
      {'icon': AppAssets.add_icon, 'text': 'Add Account'},
    ];

    showMenu<String>(
      routeSettings: RouteSettings(),
      color: AppColors.menucolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      context: context,
      position: RelativeRect.fromLTRB(220, 240, 0, 0),
      items: items.map((item) {
        return PopupMenuItem<String>(
          onTap: () {},
          value: item['text'].toString(),
          child: InkWell(
            onTap: () {},
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Image.asset(
                item['icon'].toString(),
                height: 32.h,
                width: 32.w,
              ),
              title: Text(
                item['text']!,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontFamily: MyTextStyles.worksansFamily,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                if (item['text'] == 'Converter') {
                  Navigator.pop(context);
                  print("Converted Selected");

                  Get.to(AccountSettingsConverter());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountSettingsConverter()));
                } else if (item['text'] == 'Add Account') {
                  Navigator.pop(context);
                  print("Add Account Selected");

                  showAddAccountModalBottomSheet(context);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountSettingsConverter()));
                }

                Navigator.pop(context);
              },
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
