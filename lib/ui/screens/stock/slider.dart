import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/resources/constant/app_colors.dart';
import 'package:et_bank/ui/resources/constant/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SliderRangeDemo extends StatefulWidget {
  @override
  _SliderRangeDemoState createState() => _SliderRangeDemoState();
}

class _SliderRangeDemoState extends State<SliderRangeDemo> {
  double _startValue = 10;
  double _endValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Range Demo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text('Start: $_startValue'),
                Expanded(
                  child: Slider(
                    value: _startValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    onChanged: (value) {
                      setState(() {
                        _startValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('$_endValue'
                ,style: MyTextStyles.workfont(fontsize: 12.sp, color: AppColors.primary, fontWeight:FontWeight.w400 ),),
                Expanded(
                  child: Slider(
                    value: _endValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    onChanged: (value) {
                      setState(() {
                        _endValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
