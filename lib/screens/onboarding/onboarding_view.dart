import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/navigate.dart';
import 'package:education_app/screens/Login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/icons/image-from-rawpixel-id-12183667-png.png',
                width: 300.w,
              ),
            ),
            Text(
              'عــلمـنـي',
              style: const TextStyle(fontSize: 22, fontFamily: 'Almarai'),
            ),
            const SizedBox(height: 14),
            Text(
              'اكتشف طرقًا جديدة ومبتكرة لتعلم المواد الدراسية وتطوير مهاراتك. استمتع بمجموعة متنوعة من الدروس التفاعلية والتحديات والتقييمات لتعزيز فهمك وتحفيز تعلمك',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Almarai',
                  letterSpacing: .2,
                  color: cLight.withOpacity(.6)),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            InkWell(
              onTap: () {
                navigateToPR(
                    LoginPage(),
                    context);
              },
              borderRadius: BorderRadius.circular(12),
              child: CustomButton(
                title: 'بدء الأستخدام',
              ),
            )
          ],
        ),
      ),
    );
  }
}
