import 'package:education_app/widgets/expanded.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class GoalsSlide extends StatelessWidget {
const GoalsSlide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: cNavy2,
child: ExpandedWidget(Sentence: "- تصف كيف يمكن للبكتيريا أن تنظم جيناتها.\n"
    "- تناقش كيف تُنظم الخلايا الحقيقية النواة عملية نسخ الجين.\n"
    "- تلخص الأنواع المختلفة من الطفرات.\n"
    "- تصف كيف تساعد الهندسة الوراثية على التحكم في DNA.",)
    );
  }
}