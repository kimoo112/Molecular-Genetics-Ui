// ignore_for_file: unnecessary_import, file_names, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/color.dart';


class TextFieldWi extends StatelessWidget {
  const TextFieldWi({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.type,
    this.maxlines,
    required this.autovalidateMode, required this.onsaved,
  }) : super(key: key);
  final hintText;
  final int? maxlines;
  final icon;
  final TextInputType type;
  final AutovalidateMode autovalidateMode;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        
        scrollPadding: EdgeInsets.all(55),
        autovalidateMode: autovalidateMode,
        maxLines: maxlines ?? 1,
        style: TextStyle( fontSize: 16,color: cNavy),
onSaved:onsaved ,
        autofocus: false,
        validator:
         (value) {
          if (value!.isEmpty) {
            return "You should type thing not make it empty";
          } else {
            return null;
          }
        },
        keyboardType: type,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          disabledBorder: InputBorder.none,

          

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: cPrimary,width: 1.5)),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
