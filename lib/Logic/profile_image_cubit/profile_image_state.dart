part of 'profile_image_cubit.dart';

@immutable
sealed class ProfileImageState {}

final class ProfileImageInitial extends ProfileImageState {}

final class ProfileImageEmpty extends ProfileImageState {}

final class ProfileImagePicked extends ProfileImageState {
  final String imagePath;

  ProfileImagePicked({required this.imagePath});
}
