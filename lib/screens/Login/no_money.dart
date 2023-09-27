import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoMoneyScreen extends StatelessWidget {
  const NoMoneyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cDark,
      body: Center(
        child: Text(
          'ERROR IN THE SERVER YOU CAN WAIT TO FIX THIS ERROR',
          style: TextStyle(fontSize: 15.sp, fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
