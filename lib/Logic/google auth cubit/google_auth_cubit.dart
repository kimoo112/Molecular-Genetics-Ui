// ignore_for_file: depend_on_referenced_packages

import 'package:education_app/screens/Login/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

import '../../constants/navigate.dart';
import '../../screens/Base/base_screen.dart';

part 'google_auth_state.dart';

class GoogleAuthCubit extends Cubit<GoogleAuthState> {
  GoogleAuthCubit() : super(GoogleAuthInitial());
  final user = FirebaseAuth.instance;
  Future signInWithGoogle(context) async {
    try {
      emit(GoogleAuthLoading());
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        emit(GoogleAuthFailure(errorMsg: 'You Should Choose An Account'));
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(GoogleAuthSuccess());
      navigateToPR(BaseScreen(), context);
    } on FirebaseAuthException catch (e) {
      emit(GoogleAuthFailure(errorMsg: e.message ?? "An error occurred"));
    } on Exception catch (e) {
      emit(GoogleAuthFailure(errorMsg: e.toString()));
    }
  }

  signout(context) {
    emit(GoogleAuthLoading());

    GoogleSignIn().disconnect();
    user.signOut();

    emit(GoogleAuthSuccess());

    navigateToPR(const LoginPage(), context);
  }
}
