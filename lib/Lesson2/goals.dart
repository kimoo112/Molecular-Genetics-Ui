import 'package:education_app/widgets/expanded.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class GoalsSlide extends StatelessWidget {
const GoalsSlide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: cNavy,
child: ExpandedWidget(Sentence: "- تلخص دور الانزيمات في تضاعف DNA.\n- تفسّر كيف يتم بناء السلسلة الرئيسية والسلسلة الثانوية بصورة مختلفة كل منهما عن الأخري.",)
    );
  }
}