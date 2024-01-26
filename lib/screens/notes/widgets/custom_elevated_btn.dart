
import 'package:flutter/material.dart';

class CustomElevBtn extends StatelessWidget {
  const CustomElevBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
        ),
      ),
      child: const Text(
        "Elevated Button",
      ),
    );
  }
}
