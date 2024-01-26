import 'dart:io';

import 'package:education_app/constants/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../Logic/profile_image_cubit/profile_image_cubit.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(60), boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            color: Colors.grey.withOpacity(.2),
            blurRadius: 7,
            spreadRadius: .7,
          ),
        ]),
        child: BlocBuilder<ProfileImageCubit, ProfileImageState>(
          builder: (context, state) {
            String image =
                BlocProvider.of<ProfileImageCubit>(context).imagePath;

            return Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  minRadius: 60,
                  backgroundColor: cNavy,
                  child: CircleAvatar(
                    backgroundColor: cPrimary,
                    backgroundImage: image != ''
                        ? FileImage(File(image)) as ImageProvider
                        : NetworkImage(
                            '${FirebaseAuth.instance.currentUser?.photoURL}'),
                    minRadius: 55,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: cPrimary,
                  shape: const CircleBorder(),
                  mini: true,
                  onPressed: () {
                    BlocProvider.of<ProfileImageCubit>(context)
                        .pickImageFromGallery();
                  },
                  child: const Icon(
                    Ionicons.add_circle_outline,
                    color: cLight,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
