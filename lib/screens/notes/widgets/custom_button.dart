import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.whenTap,
  });
  final void Function()? whenTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: whenTap,
        borderRadius: BorderRadius.circular(15),
        splashColor: cPrimary,
        child: Container(
            width: double.infinity,
            height: 50.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: cSlateGray.withOpacity(.5),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              "Submit".toUpperCase(),
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: 1),
            )),
      ),
    );
  }
}
