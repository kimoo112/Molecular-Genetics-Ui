import 'package:education_app/widgets/expanded.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class GoalsSlide extends StatelessWidget {
const GoalsSlide({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: cNavy2,
child: ExpandedWidget(Sentence: """
- تلخص التجارب التي أدت إلى استكشاف DNA بوصفه مادة الوراثة.
- ترسم وتعنون التركيب الأساسي لجزء DNA.
- تصف التركيب الأساسي للكروموسوم في المخلوقات الحية حقيقية النواة.""",)
    );
  }
}