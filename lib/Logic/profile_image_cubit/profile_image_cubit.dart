// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_image_state.dart';

class ProfileImageCubit extends Cubit<ProfileImageState> {
  ProfileImageCubit() : super(ProfileImageInitial());
  ImagePicker picker = ImagePicker();
  String imagePath = '';
  Future<void> pickImageFromGallery() async {
    emit(ProfileImageEmpty());
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        imagePath = pickedFile.path;
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('Image', imagePath);
        loadImage();
        emit(ProfileImagePicked(imagePath: imagePath));
      } else {}
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  loadImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('Image') != null) {
      imagePath = prefs.getString('Image')!;
      emit(ProfileImagePicked(imagePath: imagePath));
    } else {}
  }

  deleteImage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('Image');
    imagePath = '';
    emit(ProfileImagePicked(imagePath: imagePath));
  }
}
