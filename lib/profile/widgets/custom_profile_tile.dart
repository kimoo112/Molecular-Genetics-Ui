import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomProfileTile extends StatelessWidget {
  const CustomProfileTile({
    super.key,
    this.onTap,
    required this.title,
    this.subtitle,
    required this.icon,
    this.trailing,
  });
  final void Function()? onTap;
  final IconData icon;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: ListTile(
        leading: Icon(
          icon,
          color: cLight,
        ),
        title: Text(
          title.toUpperCase(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: cLight),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 4.0.sp),
          child: Text(
            subtitle ?? '',
            style: TextStyle(
                fontWeight: FontWeight.w200,
             color: cLight.withOpacity(.7))
          ),
        ),
        trailing: trailing ??
            const Icon(
              IconlyLight.arrowLeft2,
              color: cLight,
            ),
      ),
    );
  }
}
