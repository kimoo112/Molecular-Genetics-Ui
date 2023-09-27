import 'package:education_app/widgets/expanded.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class GoalsSlide extends StatelessWidget {
const GoalsSlide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: cNavy2,
child: ExpandedWidget(Sentence: "- تفسّر كيف يشارك DNA الرسول و DNA الرايبوسومي و DNA الناقل في نسخ الجينات وترجمتها.\n- تلخص دور انزيم بلمرة RNA في بناء RNA الرسول.\n- تصف كيف يتم نسخ شفرة DNA الى RNA الرسول واستخدامها في بناء بروتين معين.",)
    );
  }
}