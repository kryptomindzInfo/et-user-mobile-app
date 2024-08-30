


import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/screens/graphs/Stockgraph/freecashgraph/modal/freegraph.dart';
import 'package:et_bank/global/constants/colors.dart';




class BarData {
  static int interval = 2;

  static List<Data> data= [
    Data(
      id: 0,
      name: 'Mon',
      y: 6,
      color: AppColors.primary
    ),
    Data(
      name: 'Tue',
      id: 1,
      y: -2,
      color: AppColors.yellow,
    ),
    Data(
      name: 'Wed',
      id: 2,
      y: 8,
      color: AppColors.white,
    ),
    Data(
      name: 'Thu',
      id: 3,
      y: -3,
     color: AppColors.white,
    ),
    Data(
      name: 'Fri',
      id: 4,
      y: 15,
         color: AppColors.primary
    ),
    Data(
      name: 'Sat',
      id: 5,
      y: -5,
     color: AppColors.yellow
    ),
    Data(
      name: 'Sun',
      id: 6,
      y: 20,
      color: AppColors.yellow
    ),

       Data(
      name: 'Sat',
      id: 5,
      y: -8,
     color: AppColors.white
    ),
    Data(
      name: 'Sun',
      id: 6,
      y: -5,
      color: AppColors.primary
    ),
       Data(
      name: 'Sun',
      id: 6,
      y: 28,
      color: AppColors.primary
    ),
       Data(
      name: 'Sun',
      id: 6,
      y: -18,
          color: AppColors.white
    ),
     Data(
      name: 'Sun',
      id: 6,
      y: -5,
          color: AppColors.primary
    ),
  ];
}

double calculateSpacing(List<Data> data) {
  double totalSpacing = 0;
  for (int i = 1; i < data.length; i++) {

    double spacing = 20.0; 
    if (data[i].y < 0) {
      spacing = 40.0; 
    }
    totalSpacing += spacing;
  }
  return totalSpacing;
}