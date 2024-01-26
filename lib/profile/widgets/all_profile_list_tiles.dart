import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Logic/google auth cubit/google_auth_cubit.dart';
import 'custom_profile_tile.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';


import 'custom_switch_tile.dart';

class AllProfileListTiles extends StatefulWidget {
  const AllProfileListTiles({
    super.key,
  });

  @override
  State<AllProfileListTiles> createState() => _AllProfileListTilesState();
}

class _AllProfileListTilesState extends State<AllProfileListTiles> {
  bool isAllowed = true;

  void saveSwitchValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('switch', isAllowed);
    getSwitchValue();
  }

  getSwitchValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.get('switch') != null) {
      isAllowed = prefs.getBool('switch')!;
      setState(() {});
    } else {
      debugPrint('Switch value');
    }
  }

  @override
  void initState() {
    super.initState();
    getSwitchValue();
  }

  String? isArabic;
  @override
  Widget build(BuildContext context) {
    // var themeCubit = BlocProvider.of<ThemeCubit>(context);
    return Column(
      children: [
        SizedBox(
          height: 5.h,
        ),
        CustomSwitchTile(
          isAllowed: isAllowed,
          leadingIcon: IconlyLight.notification,
          title:"الاشعارات",
         
          enabledSubtitle: "ستتلقى التحديثات والتنبيهات",
          disabledSubtitle:  "لن تتلقى التحديثات والتنبيهات",
          onChanged: (p0) {
            isAllowed = !isAllowed;
            saveSwitchValue();
            setState(() {});
          },
        ),

        CustomProfileTile(
          icon: Iconsax.message,
          title: "اتصل بنا",
          subtitle:  "انقر لبدء دردشة واتساب",
          onTap: () {
            // _launchUrl(Strings.whatsappUrl);
          },
        ),
       
        CustomProfileTile(
          icon: Ionicons.logo_github,
          title: "اكتشف GitHub الخاص بي",
          subtitle: "استكشاف مستودعاتي ، رؤية آخر التعديلات",
          onTap: () async {
            // await _launchUrl(Strings.githubUrl);
          },
        ),

        CustomProfileTile(
          icon: Iconsax.logout,
          title: "تسجيل الخروج",
          subtitle: "تسجيل الخروج بأمان من حسابك",
          onTap: () {
            BlocProvider.of<GoogleAuthCubit>(context).signout(context);
          },
        ),
        SizedBox(
          height: 55.h,
        )
      ],
    );
  }
}

Future<void> launchUrl(String url) async {
  if (await canLaunchUrlString(url)) {
    launchUrlString(url);
  } else {
    throw Exception('Could not launch $url');
  }
}
