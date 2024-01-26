part of 'google_auth_cubit.dart';

@immutable
sealed class GoogleAuthState {}

final class GoogleAuthInitial extends GoogleAuthState {}

final class GoogleAuthLoading extends GoogleAuthState {}

final class GoogleAuthFailure extends GoogleAuthState {
  final String errorMsg;

  GoogleAuthFailure({required this.errorMsg});
}

final class GoogleAuthSuccess extends GoogleAuthState {}
