import 'package:et_bank/ui/screens/identity%20flow/frontlicense.dart';
import 'package:et_bank/global/constants/colors.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatefulWidget {
  @override
  _MyCircularProgressIndicatorState createState() =>
      _MyCircularProgressIndicatorState();
}

class _MyCircularProgressIndicatorState
    extends State<MyCircularProgressIndicator> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Frontlicense(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.yellowButton),
        ),
      ),
    );
  }
}