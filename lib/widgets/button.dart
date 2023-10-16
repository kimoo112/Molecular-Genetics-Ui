import 'dart:math';

import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/navigate.dart';
import 'package:education_app/screens/Base/base_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class ProgressBtton extends StatefulWidget {
  final controller;

  const ProgressBtton({super.key, required this.controller});
  @override
  _ProgressBttonState createState() => _ProgressBttonState();
}

class _ProgressBttonState extends State<ProgressBtton> {
  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return ProgressButton.icon(iconedButtons: {
      ButtonState.idle: IconedButton(
          text: 'Login',
          icon: Icon(CupertinoIcons.person, color: Colors.white),
          color: cLightBlue),
      ButtonState.loading: IconedButton(text: 'Loading', color: cBlue),
      ButtonState.fail: IconedButton(
          text: 'Failed',
          icon: Icon(CupertinoIcons.lock, color: Colors.white),
          color: Colors.red.shade300),
      ButtonState.success: IconedButton(
          text: 'Success',
          icon: Icon(
            CupertinoIcons.lock_open,
            color: Colors.white,
          ),
          color: Colors.green.shade400)
    }, onPressed: onPressedIconWithText, state: stateTextWithIcon);
  }

  void onPressedIconWithText() {
    switch (stateTextWithIcon) {
      case ButtonState.idle:
        stateTextWithIcon = ButtonState.loading;
        Future.delayed(
          Duration(seconds: 2),
          () {
            setState(
              () {
                stateTextWithIcon = Random.secure().nextBool()
                    ? ButtonState.success
                    : ButtonState.fail;
              },
            );
          },
        );

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        navigateToPR(
            BaseScreen(
            ),
            context);

        break;
      case ButtonState.fail:
        stateTextWithIcon = ButtonState.idle;
        break;
    }
    setState(
      () {
        stateTextWithIcon = stateTextWithIcon;
      },
    );
  }
}
