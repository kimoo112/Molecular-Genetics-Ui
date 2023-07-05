import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:education_app/screens/Login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../constants/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      duration: Duration(seconds: 4 ),
      backgroundColor: Colors.white,
      childWidget: SizedBox(
        height: 200.sp,
        width: 250.sp,
        child: Column(
          children: [
              const SizedBox(height:20),
            Lottie.asset('assets/icons/72306-dna-bio.json'),
            const SizedBox(height:20),
            Text(
              'MOLECULAR GENETICS',
              style: TextStyle(
                fontFamily: "Poppins",
                color: cNavy2,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
      defaultNextScreen: const LoginPage(),
    );
  }
}
