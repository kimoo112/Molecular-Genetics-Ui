import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class LessonScreen4 extends StatefulWidget {
  final int currentPageIdx; // Define the named parameter here

  LessonScreen4({required this.currentPageIdx});

  @override
  _LessonScreen4State createState() => _LessonScreen4State();
  //  int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType = SharedAxisTransitionType.horizontal;
}

class _LessonScreen4State extends State<LessonScreen4> {
  int _currentPageIdx = 0;
  SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  @override
  void initState() {
    super.initState();
    _currentPageIdx = widget.currentPageIdx;
  }

  final _pages = <Widget>[
    // Note: when changed child is of the same type as previous one, set the
    // key property explicitly.
    SingleChildScrollView(
      child: Container(
          key: ValueKey(1),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'التنظيم الجيني في الخلايا حقيقية النوى',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "يجب أن تتحكم الخاليا حقيقية النوى في الجينات التي سيتم التعبير عنها في أوقات محددة من حيــاة المخلوق الحي. فالعديد من الجينــات يتفاعل بعضها مع بعض في الخاليا الحقيقية النوى، مما يتطلب توافر أكثر من مجرد محفز واحد ومشــغل واحد لمجموعة من الجينات. ولما كان تنظيم الخاليا الحقيقية النوى وتركيبها أكثر ً تعقيدا من الخاليا البدائية النوى فإن ذلك يزيد من تعقيد نظام التحكم.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),

    SingleChildScrollView(
      key: ValueKey(2),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'التحكم في عملية النسخ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "إحدى الطرائق التي تتحكم فيهــا الخاليا الحقيقيــة النوى بالتعبير الجينــي تحدث من خالل ُ بروتينات تسمى عوامل النســخ؛ حيث تضمن هذه العوامل استعمال الجين في الوقت المناســب، وإنتاج البروتينات بالكميات الصحيحة. وهناك مجموعتان ّ رئيستان من عوامل النســخ هما: عوامل النسخ التي تكون مركبات معقدة تنظم ُخرى فتشــمل إنزيم بلمــرة RNA وتوجه ارتباطــه بالمنظم. أما المجموعة األ ُ بروتينات منظمة تساعد على التحكم بســرعة النسخ. فعلى سبيل المثال، تقوم ُ بروتينات ت ّ ســمى البروتينات النشــطة بطي جــزيء DNA ؛ حيث تجعل مواقع المحفزات قريبة من المركب المعقد، فتزيد بذلك من سرعة نسخ الجين. وترتبط ً أيضا بروتينات مثبطة مع مواقع محددة على DNA تمنع ارتباط المحفزات.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "ويعــد تعقيد تركيب DNA ً الخاليا الحقيقية النوى منظم ً ا أيضا لعملية النســخ. تذكر أن DNA ّ الخاليا الحقيقية النوى ملتف حول الهستونات ليكون جسيمات نوويــة. ويوفر هذا التركيب بعض التثبيط لعملية النســخ، وعلى الرغم من ذلك فإن البروتينات المنظمة وإنزيم بلمرة RNA ما زاال يســتطيعان تنشــيط جينات محددة، حتى لو كانت مطوية داخل الجسيم النووي",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(3),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'تداخل RNA',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "الطريقة الأخرى لتنظيم جينات الخلايا الحقيقيــة النوى هي تداخــل RNA . ُ حيث تقطع قطع صغيــرة من RNA الثنائي ُ ُ ســمى المقطع. وتسمى القطع السلســلة في ســيتوبالزم الخلية بواسطة إنزيم ي الثنائية السلسلة الناتجة جزيئات RNA المتداخلة الصغيرة. وترتبط هذه بدورها ببروتين معقد يقوم بدوره بتكســير سلســلة واحدة من RNA .ترتبط السلســلة المفــردة الصغيرة الناتجة عن جزيء RNA المتداخــل الصغير ومعقد البروتين مع مقاطع محددة ومتسلســلة على mRNA في السيتوبالزم، فتؤدي إلى تقطيع mRNA وبهــذا تمنع ترجمتــه. ويبين الشــكل 15-9 RNA المتداخل الصغير أحادي السلسلة والبروتين المعقد مرتبطين بـ mRNA",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/RNA-illustration.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'الطفرات ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Dna-mutation.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "هل أخطأت ذات مرة في أثناء كتابتك على الحاســوب؟ عندما تكتب قد تضغط ً مفتاحا غير مطلوب. وكما يمكن أن تخطــئ في أثناء الكتابة، كذلك قد يحدث ٌخلل ٌ أو اضطراب في أثناء تضاعف الخاليا. هذه االضطرابات نادرة الحصول، لدى الخلية آليــات إصالح يمكنها أن تصلح بعض الخلل. ففي بعض األحيان، يحدث تغير دائم في DNA الخلية، وهذا يسمى الطفرة mutation .تذكر أن أحد األنماط الوراثية التي درســها مندل هي بذور البازالء المجعدة والملساء. ومن المعروف اليوم أن الطراز الشــكلي المجعد لهذه البذور مرتبط مع غياب إنزيم يؤثر في شــكل جزيئات النشــا في البذور.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      key: ValueKey(4),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'أنواع الطفرات',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/types of mutation.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    " وهناك نوع آخر من الطفرات قد تحدث، يتضمن كسب نيوكليوتيد واحد أو خسارته ضمن تسلسل القواعد النيتروجينية على جزيء DNA. وتُسمى عملية إضافة نيوكليوتيد إلى تسلسل القواعد على DNA طفرات الإضافة. أما فقدان نيوكليوتيد فيسمى طفرات الحذف. وكلا النوعين من الطفرات يغير مضاعفات الكودونات الثلاثية، من نقطة الإضافة أو الحذف، وهو ما يسمى طفرات الإزاحة؛ لأنها تغير ترتيب الأحماض الأمينية.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          )),
    ),
     SingleChildScrollView(
      key: ValueKey(5),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [ Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("وهناك نوع آخر من الطفرات قد تحدث، يتضمن كسب نيوكليوتيد واحد أو خسارته ضمن تسلسل القواعد النيتروجينية على جزيء DNA. وتُسمى عملية إضافة نيوكليوتيد إلى تسلسل القواعد على DNA طفرات الإضافة. أما فقدان نيوكليوتيد فيسمى طفرات الحذف. وكلا النوعين من الطفرات يغير مضاعفات الكودونات الثلاثية، من نقطة الإضافة أو الحذف، وهو ما يسمى طفرات الإزاحة؛ لأنها تغير ترتيب الأحماض الأمينية.",
                // "وهناك نوع آخر من الطفرات قد تحدث، يتضمن كسب نيوكليوتيد واحد أو خسارته ضمن تسلسل القواعد النيتروجينية على جزيء DNA. وتُسمى عملية إضافة نيوكليوتيد إلى تسلسل القواعد على DNA طفرات الإضافة. أما فقدان نيوكليوتيد فيسمى طفرات الحذف. وكلا النوعين من الطفرات يغير مضاعفات الكودونات الثلاثية، من نقطة الإضافة أو الحذف، وهو ما يسمى طفرات الإزاحة؛ لأنها تغير ترتيب الأحماض الأمينية، ويوضح الجدول 3-9 الأنواع المختلفة من الطفرات وتأثيرها في تسلسل DNA.",
                textDirection: TextDirection.rtl,style: TextStyle(
                  fontFamily: 'Cairo',
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),

              ),
            ),
          ),
            ]))),
    SingleChildScrollView(
      key: ValueKey(6),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'أسباب الطفرات',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "قــد تحــدث بعــض الطفــرات ً -وخصوصا الطفرات النقطية- بصورة تلقائيــة؛ إذ يضيف إنزيم بلمرة DNA ، خــال التضاعف، القاعدة الخطأ. وألن إنزيم بلمــرة DNA قادر على تصحيح األخطاء فإن نسبة الخطأ في إضافة النيوكليوتيد غير المطلوب هي 1 :100٫000 قاعدة نيتروجينية؛ ويفلت من عملية التصحيح ما نسبته 1 : بليون.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "يمكن أن تتلف بعض العوامل المسببة للطفرات mutagens الـ DNA أيضًا ومنها المواد الكيميائية والأشعة. وقد صُنّف العديد من المواد الكيميائية على أنها عوامل مسببة للطفرات؛ إذ تؤثر بعض هذه المواد الكيميائية في DNA عن طريق تغيير التركيب الكيميائي للقواعد وتؤدي هذه التغيرات غالبًا إلى عدم ارتباط القواعد في أزواج، أو أن ترتبط قاعدة بقاعدة أخرى خطأ. ولعوامل كيميائية أخرى مسببة للطفرات تراكيب كيميائية شبيهة بالنيوكليوتيدات، حتى أنها يمكن أن تحل محلها. وعندما تدخل هذه القواعد الزائفة إلى DNA، لا يستطيع التضاعف بالصورة الصحيحة، وقد أصبحت هذه الأنواع من المواد الكيميائية ذات أهمية من الناحية الطبية، وخصوصًا في معالجة فيروس HIV، الفيروس الذي يسبب الإيدز ؛ حيث يشبه العديد من الأدوية التي استعملت لعلاج HIV والأمراض الفيروسية الأخرى النيوكليوتيدات المختلفة، وعندما يتحد الدواء بـ DNA الفيروس، لا يمكن لـ DNA نسخ نفسه بصورة صحيحة.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/tfrat.jfif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
          
            ],
          )),
    ),
     SingleChildScrollView(
      key: ValueKey(7),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
                  Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "تعد الأشعة العالية الطاقة، مثل أشعة - وجاما، عوامل قوية مسببة للطفرات. فعندما تصل الأشعة إلى DNA تمتص الإلكترونات طاقة هذه الأشعة. ويمكن للإلكترونات أن تهرب من ذراتها، تاركة خلفها جذورًا حرة (free radicals). فالجذور الحرة هي ذرات مشحونة بإلكترونات منفردة تتفاعل بعنف مع الجزيئات الأخرى، ومنها DNA.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "وتحوي أشعة الشمس فوق البنفسجية (UV) طاقة أقل من أشعةX لا تسبب تحرير الإلكترونات من الذرات. ومع ذلك يمكن للأشعة فوق البنفسجية أن تربط قواعد الثايمين المتجاورة معا، متلفة تركيب DNA،  وهنا يصبح DNA مختلا، أو منحنيا، فيصبح غير قادر على التضاعف بصورة صحيحة إلا إذا تم إصلاحه.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ]))),
    SingleChildScrollView(
      key: ValueKey(8),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'طفرة الخلايا الجسمية والجنسية',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/icons/Body-cell v. sex-cell mutation.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "عندما لا تستجيب الطفرة في الخلايا الجسمية لآلية التصحيح، أو تتجنبها، تصبح جزءا من الترتيب الوراثي في الخلية، ومن ثم في الخلايا الجديدة المستقبلية. لا تنتقل الطفرات في الخلايا الجسمية إلى الجيل التالي. وفي بعض الحالات، لا تسبب هذه الطفرات مشكلات في الخلية. فقد تكون ترتيبات لا تُستعمل في الخلية البالغة وقت حدوث الطفرة، أو أن الطفرة لم تغير تشفير (الكودون) الحمض الأميني. وتسمى مثل هذه الطفرات الطفرات المتعادلة. وعندما تؤدي الطفرات إلى إنتاج بروتين غير طبيعي فقد لا تصبح الخلية قادرة على أداء عملها الطبيعي، وقد تموت الخلية. لقد تعلمت من قبل أن الطفرات في الخلايا الجسمية، والتي تجعل دورة الخلية غير منضبطة، قد تؤدي إلى السرطان. وتبقى هذه الآثار داخل خلايا المخلوق الحي ما دامت الخلايا الجسدية هي المتأثرة.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "وعندما تحدث الطفرة في الخلايا الجنسية، وتُسمى أيضًا الخلايا التكاثرية، تنتقل هذه الطفرات إلى أبناء المخلوق الحي، وسوف توجد في كل خلية من خلايا أبنائه. وفي العديد من الحالات لا تؤثر هذه الطفرات في وظيفة الخلايا في المخلوق الحي، على الرغم من أنها قد تؤثر في أبنائه على نحو مــســـاوي. وعندما تؤدي الطفرات إلى إنتاج بروتين غير طبيعي، تكون الآثار بعيدة المدى مقارنة بالحالة التي ينتج فيها بروتين غير طبيعي في خلية جسدية منفصلة.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      key: ValueKey(9),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'الهندسه الوراثيه',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "بحلول عام 1970م، اكتشــف العلماء تركيب جزيء DNA ، واستطاعوا تحديد المبدأ األساســي الذي تنتقل فيه المعلومات مــن DNA إلى RNA ،ومن RNA إلــى البروتين. وعلى الرغم من ذلك لم يعرف العلماء الكثير عن عمل الجينات منفردة. ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "تغير الوضع عندما بدأ العلماء يستعملون الهندسة الوراثية genetic engineering وهي تقنية تتضمن التحكم في جزيء DNA لأحد المخلوقات الحية، وذلك بإضافة DNA خارجي، أي DNA من مخلوق حي آخر. فعلى سبيل المثال حقن الباحثون جين بروتين للإضاءة الحيوية يُسمى بروتين الإضاءة الخضراء في مخلوقات حية مختلفة. يُشع بروتين الإضاءة الخضراء - وهو مادة موجودة طبيعيا في قناديل البحر التي تعيش في شمال المحيط الهادئ - ضوءًا أخضر عندما تتعرض لضوء فوق بنفسجي. المخلوقات الحية التي عُدِّلت وراثيا لكي تحتوي DNA المسؤول عن تكوين بروتين الإضاءة الخضراء، يمكن تمييزها بسهولة في وجود ضوء فوق بنفسجي. يُربط DNA الخاص ببروتين الإضاءة الخضراء مع DNA خارجي. هذه المخلوقات المعدلة وراثيا تستعمل في عملیات مختلفة، ومنها دراسة التعبير عن جين محدد، ودراسة عمليات خلوية، ودراسة تطور مرض معين، واختيار صفات قد تكون ذات فائدة للبشر. تستعمل الهندسة الوراثية أدوات فاعلة ، كما في الجدول 4-9، لدراسة DNA وتعديله. وعلى الرغم من أن الباحثين يبحثون في العديد من المشكلات المختلفة فإن تجاربهم تتضمن غالبا القطع بواسطة إنزيمات القطع، وعزل القطع، وربطها مع جزيئات DNA خارجية، وتحديد التسلسل.",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Screenshot_101.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(10),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'الحيوانات المعدلة وراثيا ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'ينتج العلماء حاليا معظم الحيوانات المعدلة وراثيا في المختبرات من أجل الأبحاث الحيوية. فتستعمل الفئران وذبابة الفاكهة والدودة الأسطوانية Caenorhabdities elegans على نحو واسع في مختبرات البحث حول العالم لدراسة الأمراض وتطوير طرائق لمعالجتها. وبعض المخلوقات المعدلة وراثيا - ومنها المواشي - أُنتجت لتحسين المصادر الغذائية وتحسين معيشة البشر.',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/anim.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(11),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'النباتات المعدلة وراثيًّا',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'أنتج العديد من النباتات ًّا لكي تكون أكثر مقاومة للحشــرات واآلفات الفيروسية، ومقاومة المعدلة وراثي ُّ لمبيدات األعشــاب والحشــرات، ومنها الذرة وفول الصويــا والقطن. وينتج ًّحيث يقاوم هذا القطن هجوم ً وراثي العلمــاء اآلن قطنًا معدال ً الحشــرات على محافظ أوراق القطن. كما يطور الباحثون أيضا نباتات فســتق وفول صويا ال تسبب تفاعالت حساسية لمستهلكيها.',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/flowers.jfif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      child: Container(
          key: ValueKey(12),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'البكتيريا المعدّلة وراثيًّا',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'يمكن للبكتيريا المعدلة ًّا إنتاج األنســولين، وهرمونــات النمو، ومواد تذيب خثــرات الدم . كما وراثي ً يمكنها أيضا أن تبطئ من تكون بلورات الثلج على المحاصيل الزراعية لحمايتها ّ من التلف في الصقيع، وتزيل بقع النفط، وتحلل القمامة.',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              InstaImageViewer(
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/bktr.jfif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      key: ValueKey(13),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'الجينوم البشري',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '(مشــروع الجينوم المحتوى الجيني)البشــري مشــروع عالمي تم اكتماله عام 2003م. والجينوم هو المعلومات الوراثية الكاملة في الخلية. وهدف هذا المشروع ًا تشكل DNA البشري، هو تحديد تسلسل وترتيب ثالثة مليارات نيوكليوتيد تقريب ًا. وتحديد جميع الجينات البشرية، والبالغ عددها 20٫000- 25٫000 جين تقريبا',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'تحديد تسلسل القواعد النيتروجينية في الجينوم البشري',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'لتحديد تسلسل القواعد في الجينوم البشري المتصل، يجب تقطيع كل كروموسوم من الكروموسومات. وقد استعمل لهذا الغرض العديد من إنزيمات البشرية الـبالغة 46 كروموسوم القطع المختلفة للحصول على قطع ذات تسلســل قواعد متداخل. وربطت هذه القطع بناقل للحصول على DNA هجين لزيادة عددها لتحديد تسلســل القواعد بواســطة أجهزة خاصة حددت مناطق التداخل لتعطي في النهاية تسلسًل ً واحدا متواصًل من القواعد النيتروجينية.',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
  ];

  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType =
  //     SharedAxisTransitionType.horizontal;

  @override
  Widget build(BuildContext context) {
    // _currentPageIdx = widget.currentPageIdx;

    return Scaffold(
      appBar: NewGradientAppBar(
        // brightness: Brightness.light,
        elevation: 20,
        //
        gradient: LinearGradient(colors: [
          Color.fromARGB(206, 10, 10, 10),
          Color.fromARGB(255, 0, 50, 85)
        ]),
        title: Text(
          ' Gene Regulation and Mutation',
          textScaleFactor: 1.12,
          style: TextStyle(
              color: Colors.white.withOpacity(.9),
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 3, 34, 54),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageTransitionSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) =>
                        SharedAxisTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: this._transitionType,
                  child: child,
                ),
                child: _pages[_currentPageIdx],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: this._currentPageIdx == 0
                        ? null
                        : () => setState(() => this._currentPageIdx--),
                    child: const Text('الـسـابـق',
                        style: TextStyle(fontFamily: "Cairo")),
                  ),
                  TextButton(
                    onPressed: this._currentPageIdx == 0
                        ? null
                        : () => setState(() => this._currentPageIdx = 0),
                    child: const Text('الـرئيـسـيـة',
                        style: TextStyle(
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: this._currentPageIdx == 13
                        ? null
                        : () => setState(() => this._currentPageIdx++),
                    child: const Text(
                      'الـتـالـي',
                      style: TextStyle(fontFamily: "Cairo"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildControlBar(),
    );
  }

  Widget _buildControlBar() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(206, 10, 10, 10),
        Color.fromARGB(255, 0, 68, 117)
      ])),
      //  Theme.of(context).primaryColorLight
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text(
              'Transition Type',
              style: TextStyle(color: Colors.white),
            ),
            trailing: DropdownButton<SharedAxisTransitionType>(
              value: _transitionType,
              items: [
                for (final val in SharedAxisTransitionType.values)
                  DropdownMenuItem(
                    value: val,
                    child: Text(
                      val
                          .toString()
                          .substring('SharedAxisTransitionType.'.length),
                      style: TextStyle(color: Colors.black87),
                    ),
                  )
              ],
              onChanged: (SharedAxisTransitionType? val) {
                if (val != null) setState(() => this._transitionType = val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
