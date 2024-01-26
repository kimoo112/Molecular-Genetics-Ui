import 'package:education_app/constants/color.dart';
import 'package:flutter/material.dart';

class CustomSwitchTile extends StatelessWidget {
  const CustomSwitchTile({
    super.key,
    required this.isAllowed,
    required this.leadingIcon,
    required this.enabledSubtitle,
    required this.title,
    required this.disabledSubtitle,
    this.onChanged,
  });

  final bool isAllowed;
  final IconData leadingIcon;
  final String enabledSubtitle;
  final String title;
  final String disabledSubtitle;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeTrackColor: cForestGreen,
      activeColor: cLight,
      inactiveThumbColor: cGrey,
      inactiveTrackColor: cRed,
      overlayColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
      value: isAllowed,
      onChanged: onChanged,
      secondary: Icon(
        leadingIcon,
        color: isAllowed ? cForestGreen : cRed,
      ),
      title: Text(
        title.toUpperCase(),
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: cLight),
      ),
      subtitle: Text(
        isAllowed ? enabledSubtitle : disabledSubtitle,
        style: TextStyle(
            fontWeight: FontWeight.w200,
            color: isAllowed ? cForestGreen : cRed),
      ),
    );
  }
}
