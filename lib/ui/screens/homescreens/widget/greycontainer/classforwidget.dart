import 'package:et_bank/ui/resources/constant/app_assets.dart';

class DataItem {
  final String title;
  final String subtitle;
  final String trailing;
  final String leading;

  DataItem({
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.leading,
  });
}

final List<DataItem> dataList = [
  DataItem(
    title: 'Cash balance',
    subtitle: '2 accounts',
    trailing: "Add",
    leading: AppAssets.Green,
  ),
  DataItem(
    title: 'Linked',
    subtitle: 'Linked external accounts',
    trailing: "Link",
    leading: AppAssets.yellow,
  ),
  DataItem(
    title: 'Saving',
    subtitle: 'Put money in vault',
    trailing: "Add",
    leading: AppAssets.lightyellow,
  ),
  DataItem(
    title: 'Stocks',
    subtitle: 'Invest fo as little as  \$1',
    trailing: 'Invest',
    leading: AppAssets.lightgreen,
  ),
  DataItem(
    title: 'Crypto',
    subtitle: 'Invest fo as little as  \$1',
    trailing: "Invest",
    leading: AppAssets.lighgrey,
  ),
  DataItem(
    title: 'Commodities',
    subtitle: 'Invest fo as little as  \$1',
    trailing: "Invest",
    leading: AppAssets.white,
  ),
];
