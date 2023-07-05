import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  String userName = '';
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
                      cLight,
                      cBlue,
                    ],
                  ),
              //     image: DecorationImage(
              //   image: AssetImage(
              //     "assets/icons/Tafra.jfif",
              //   ),
              //   fit: BoxFit.cover,
              //   filterQuality: FilterQuality.high,
              //   colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.srcOver),
              // )
              ),
              child: Opacity(
                opacity: _opacity.value,
                child: Transform.scale(
                  scale: _transform.value,
                  child: Container(
                    width: size.width * .93,
                    height: size.width * 1.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.2),
                            blurRadius: 20,
                            spreadRadius: 2,
                            offset: Offset(2, 5)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(),
                        Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(.7),
                          ),
                        ),
                        SizedBox(),
                        // IconData icon, String hintText, bool isPassword, bool isEmail,String errorName ,controler) {

                        component1(
                            Icons.account_circle_outlined,
                            'User name...',
                            false,
                            false,
                            "Please Enter the Username",
                            usernameCT),
                        component1(Icons.email_outlined, 'Email...', false,
                            true, "Please Enter the Email", emailCT),
                        component1(Icons.lock_outline, 'Password...', true,
                            false, "Please Enter the Password", passwordCT),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProgressBtton(
                              controller: usernameCT.text,
                            ),
                            SizedBox(width: size.width / 25),
                            Container(
                              width: size.width / 2.6,
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Forgotten password!',
                                  style: TextStyle(color: Colors.blueAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Fluttertoast.showToast(
                                        msg:
                                            'Forgotten password! button pressed',
                                      );
                                    },
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(),
                        RichText(
                          text: TextSpan(
                            text: 'Create a new Account',
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Fluttertoast.showToast(
                                  msg: 'Create a new Account button pressed',
                                );
                              },
                          ),
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
        color: Colors.black.withOpacity(.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Form(
        child: TextFormField(
          style: TextStyle(color: Colors.black.withOpacity(.8)),
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
              color: Colors.black.withOpacity(.7),
            ),
            border: InputBorder.none,
            hintMaxLines: 1,
            hintText: hintText,
            hintStyle:
                TextStyle(fontSize: 14, color: Colors.black.withOpacity(.5)),
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

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
