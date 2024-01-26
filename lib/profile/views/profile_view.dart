import 'package:education_app/constants/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../Logic/google auth cubit/google_auth_cubit.dart';
import '../../Logic/profile_image_cubit/profile_image_cubit.dart';
import '../widgets/all_profile_list_tiles.dart';
import '../widgets/profile_picture.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileImageCubit>(context).loadImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 240.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 210.h,
                      color: cPrimary,
                    ),
                  ),
                  const ProfilePicture(),
                  _logoutButton(context),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            _nameAndEmail(context),
            SizedBox(
              height: 20.h,
            ),
            const AllProfileListTiles()
          ],
        ),
      ),
    );
  }

  Column _nameAndEmail(context) {
    return Column(
      children: [
        Text("${FirebaseAuth.instance.currentUser?.displayName}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 20.sp)),
        Text("${FirebaseAuth.instance.currentUser?.email}",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11.sp,
              fontFamily: 'Poppins',
              color: cGrey,
            )),
      ],
    );
  }

  Positioned _logoutButton(BuildContext context) {
    return Positioned(
      top: 20.sp,
      left: 0,
      child: IconButton(
        onPressed: () {
          BlocProvider.of<GoogleAuthCubit>(context).signout(context);
        },
        icon: const Icon(
          Iconsax.logout,
          color: cLight,
        ),
      ),
    );
  }
}
