import 'package:et_bank/global/constants/colors.dart';
import 'package:et_bank/ui/screens/identity%20flow/license2.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator3 extends StatefulWidget {
  @override
  _MyCircularProgressIndicator3State createState() =>
      _MyCircularProgressIndicator3State();
}

class _MyCircularProgressIndicator3State
    extends State<MyCircularProgressIndicator3> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => identitylicenseback(),
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