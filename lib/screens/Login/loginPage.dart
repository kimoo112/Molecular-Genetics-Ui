// ignore_for_file: unused_field

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../Logic/google auth cubit/google_auth_cubit.dart';
import '../../widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  static String userName = '';
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _transform;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    usernameCT.addListener(updateUserName);

    _opacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    )..addListener(() {
        setState(() {});
      });

    _transform = Tween<double>(begin: 2, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    usernameCT.dispose();
    emailCT.dispose();
    passwordCT.dispose();
    super.dispose();
  }

  void updateUserName() {
    setState(() {
      userName = usernameCT.text;
    });
  }

  TextEditingController usernameCT = TextEditingController();
  TextEditingController emailCT = TextEditingController();
  TextEditingController passwordCT = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Container(
              width: KWidth(context),
              height: KHieght(context),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    cNavy,
                    cNavy2,
                  ],
                ),
              ),
              child: Opacity(
                opacity: _opacity.value,
                child: Transform.scale(
                  scale: _transform.value,
                  child: Container(
                    width: size.width * .93,
                    height: size.width * 1.5,
                    decoration: BoxDecoration(
                      color: cNavy.withOpacity(.9),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: cLight.withOpacity(.2),
                            blurRadius: 30,
                            spreadRadius: 0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(),
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: cLight.withOpacity(.7),
                          ),
                        ),
                        SizedBox(),
                        component1(
                            Icons.account_circle_outlined,
                            'اسم المستخدم',
                            false,
                            false,
                            "ادخل اسم المستخدم لا تترك الحقل فارغ",
                            usernameCT),
                        component1(
                            Icons.email_outlined,
                            'البريد الالكتروني',
                            false,
                            true,
                            "ادخل البريد الالكتروني لا تترك الحقل فارغ",
                            emailCT),
                        component1(Icons.lock_outline, 'كلمة السر', true, false,
                            "ادخل كلمة السر لا تترك الحقل فارغ", passwordCT),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ElevButton(),
                            ProgressBtton(controller: usernameCT.text),
                            SizedBox(width: size.width / 25),
                            Container(
                              width: size.width / 2.6,
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                    text: 'نسيت كلمة السر',
                                    style: TextStyle(
                                        color: cPrimary, fontFamily: 'Almarai'),
                                    recognizer: TapGestureRecognizer()),
                              ),
                            )
                          ],
                        ),
                        BlocConsumer<GoogleAuthCubit, GoogleAuthState>(
                          listener: (context, state) {
                            if (state is GoogleAuthFailure) {
                              debugPrint(state.errorMsg);
                              showSnackBar(
                                  context, state.errorMsg, ContentType.failure);
                            } else if (state is GoogleAuthSuccess) {
                              showSnackBar(context, 'Login Successfuly Done',
                                  ContentType.success);
                            }
                          },
                          builder: (context, state) {
                            if (state is GoogleAuthLoading) {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: cPrimary,
                                ),
                              );
                            } else {}
                            return IconButton(
                              onPressed: () {
                                BlocProvider.of<GoogleAuthCubit>(context)
                                    .signInWithGoogle(context);
                              },
                              icon: const Icon(
                                Ionicons.logo_google,
                                size: 50,
                                color: cPrimary,
                              ),
                            );
                          },
                        ),
                        SizedBox(),
                        RichText(
                          text: TextSpan(
                              text: 'انشاء حساب',
                              style: TextStyle(
                                fontFamily: 'Almarai',
                                color: cPrimary,
                                fontSize: 15,
                              ),
                              recognizer: TapGestureRecognizer()),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget component1(IconData icon, String hintText, bool isPassword,
      bool isEmail, String errorName, controler) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.width / 8,
      width: size.width / 1.22,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: cLight.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Form(
        child: TextFormField(
          cursorColor: cPrimary,
          style: TextStyle(color: cLight.withOpacity(.8)),
          controller: controler,
          obscureText: isPassword,
          validator: (value) {
            if (value!.isEmpty) {
              return errorName;
            } else {
              return null;
            }
          },
          keyboardType:
              isEmail ? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: cLight.withOpacity(.7),
            ),
            border: InputBorder.none,
            hintMaxLines: 1,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14, color: cLight.withOpacity(.5)),
          ),
        ),
      ),
    );
  }

  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: voidCallback,
      child: Container(
        height: size.width / 8,
        width: size.width / width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff4796ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          string,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String errMsg, ContentType type) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'On Snap!',
      message: errMsg,
      contentType: type,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
