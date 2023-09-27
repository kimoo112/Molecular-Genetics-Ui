// ignore_for_file: must_be_immutable

import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final phoneNumber = '+201275619451'; // Replace with your phone number
    final message = Uri.encodeComponent(
        'Hello Karim, I Want To Talk With You!'); // Replace with your predefined message

    final whatsappUrl = 'https://wa.me/+201275619451?text=Hello Karim, I Want To Talk With You!';

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  void MyGithub() async {
    final githubUrl = 'https://github.com/kimoo112';

    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      throw 'Could not launch Github';
    }
  }

  void MyFacebook() async {
    final facebookUrl = 'https://www.facebook.com/KaRiM.MoHaMeD.551/';

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
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
              Text(
                "Karim Mohamed",
                style: TextStyle(fontFamily: "poppins", fontSize: 25.sp),
              ),
              SizedBox(
                height: 50,
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
                        size: 33.sp,
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
                        size: 33.sp,
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
                        size: 33.sp,
                                              color: cLightBlue,

                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
