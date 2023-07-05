import 'package:flutter/material.dart';



class DatePickerTxt extends StatefulWidget {
  const DatePickerTxt({
    Key? key,
  }) : super(key: key);

  @override
  State<DatePickerTxt> createState() => _DatePickerTxtState();
}

class _DatePickerTxtState extends State<DatePickerTxt> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
       
      },
      child: const Text(
        'Push The Notify',
        style: TextStyle(color: Colors.amber),
      ),
    );
  }
}
