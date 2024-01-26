import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 33.h,
      decoration: BoxDecoration(
          color: cPrimary, borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 22, fontFamily: 'Almarai', letterSpacing: 1),
      ),
    );
  }
}
