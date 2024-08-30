import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/identity%20flow/license.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator2 extends StatefulWidget {
  @override
  _MyCircularProgressIndicator2State createState() =>
      _MyCircularProgressIndicator2State();
}

class _MyCircularProgressIndicator2State
    extends State<MyCircularProgressIndicator2> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => identitylicense(),
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