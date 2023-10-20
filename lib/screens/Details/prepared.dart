// ignore_for_file: must_be_immutable

import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PreparedScreen extends StatelessWidget {
  var d = Container(
    height: 1,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
    ),
  );
  PreparedScreen({super.key});

  void contactMeOnWhatsApp() async {
    final whatsappUrl =
        'https://wa.me/+201275619451?text=Hello Karim, I Want To Talk With You!';

    if (await canLaunchUrlString(whatsappUrl)) {
      await launchUrlString(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  void MyGithub() async {
    final githubUrl = 'https://github.com/kimoo112';

    if (await canLaunchUrlString(githubUrl)) {
      await launchUrlString(githubUrl);
    } else {
      throw 'Could not launch Github';
    }
  }

  void MyFacebook() async {
    final facebookUrl = 'https://www.facebook.com/KaRiM.MoHaMeD.551/';

    if (await canLaunchUrlString(facebookUrl)) {
      await launchUrlString(facebookUrl);
    } else {
      throw 'Could not launch Facebook';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 0, 11, 31),
        appBar: AppBar(
          backgroundColor: cTransperet,
          title: Text(
            "اعداد",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Almarai",
                fontSize: 30.sp,
                fontWeight: FontWeight.w400),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.start,
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "اعداد: الجوهره محمد منصور الحمادي ",
                style: TextStyle(fontFamily: "Cairo", fontSize: 25),
              ),
              SizedBox(
                height: 50,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Karim Mohamed",
                      style: TextStyle(fontFamily: "poppins", fontSize: 10.sp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              MyGithub();
                            },
                            icon: Icon(
                              Ionicons.logo_github,
                              size: 20.sp,
                              color: cLightBlue,
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        IconButton(
                            onPressed: () {
                              contactMeOnWhatsApp();
                            },
                            icon: Icon(
                              Ionicons.logo_whatsapp,
                              size: 20.sp,
                              color: cLightBlue,
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        IconButton(
                            onPressed: () {
                              MyFacebook();
                            },
                            icon: Icon(
                              Ionicons.logo_facebook,
                              size: 20.sp,
                              color: cLightBlue,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
