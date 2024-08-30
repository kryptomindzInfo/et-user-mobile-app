import 'package:et_bank/ui/screens/Analytics_flow/Analytic.dart';
import 'package:et_bank/ui/screens/Gift%20flow/Gift.dart';
import 'package:et_bank/ui/screens/Insurance/getmoreinsurance.dart';
import 'package:et_bank/ui/screens/Net%20worth/networth.dart';
import 'package:et_bank/ui/screens/Xplevelbar/Xplevel.dart';
import 'package:et_bank/ui/screens/customer_services_flow/customer_services_needhelp.dart';
import 'package:et_bank/ui/screens/donations/donations_home.dart';
import 'package:et_bank/ui/screens/salary/salary_yourpay.dart';
import 'package:et_bank/ui/screens/searches/searches_suggestedproducts.dart';
import 'package:et_bank/ui/screens/shop/Shop_getcash.dart';
import 'package:flutter/material.dart';

class ReferenceScreen extends StatelessWidget {
  final int selectedIndex;

  ReferenceScreen({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        return Networth();
      case 1:
        return Analytics();
      case 2:
        return Xplevelbar();
      case 3:
        return getmoreinsurance();
      case 4:
        return shopgetcash();
      case 5:
        return Salarypay();
      case 6:
        return Gift();
      case 7:
        return DonationsHome();
      case 8:
        return SearchesSuggestedProducts();
      case 9:
        return CustomerServicesNeedHelp();

      default:
        return Container();
    }
  }
}
