// ignore_for_file: unused_import, duplicate_import, must_be_immutable, unused_field, unnecessary_import

import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'dart:ui';
import 'package:animations/animations.dart';

class LessonScreen extends StatefulWidget {
  final int currentPageIdx; // Define the named parameter here

  LessonScreen({required this.currentPageIdx});

  @override
  _LessonScreenState createState() => _LessonScreenState();

  int _currentPageIdx = 0;
  SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;
}

class _LessonScreenState extends State<LessonScreen> {
  int _currentPageIdx = 0;
  SharedAxisTransitionType _transitionType =
      SharedAxisTransitionType.horizontal;

  @override
  void initState() {
    super.initState();
    _currentPageIdx = widget.currentPageIdx;
  }

  final _pages = <Widget>[
    SingleChildScrollView(
      key: ValueKey(1),
      child: Container(
        color: Color.fromARGB(255, 5, 50, 80),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ' اكتشاف المادة الوراثية ',
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
                  key: ValueKey(1),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        'assets/icons/discovery-of-dna-l.jpg',
                        width: 350,
                      ))),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'عندما أعيد اكتشاف نتائج مندل في العام 1900م، بدأ العلماء البحث عن الجزيء الذي يدخل في الوراثة. وقد عرف العلماء أن المعلومات الوراثية محمولة على الكروموسومات في خلايا المخلوقات الحية الحقيقية النوى، وأن أهم مكونين من مكونات الكروموسومات هما DNA والبروتين. وعلى مدى سنوات طويلة حاول العلماء تحديد أي هذين الجزيئين الكبيرين - DNA الحمض النووي) أو البروتين- هو مصدر المعلومات الوراثية.',
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
          ),
        ),
      ),
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
                padding: const EdgeInsets.all(10),
                child: Text(
                  'العالم جريفيث Griffith',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'في عــام 1928م أجرى فريدريك جريفيث أول تجربة رئيســة أدت إلى اكتشاف DNA  بوصفه مادة الوراثة. وقد درس جريفيث ساللتين من بكتيريا المكورات السبحية الرئوية pneumonia Streptococcus ،التي تسبب التهاب الرئة، فوجد أن إحدى الســاالت يمكنها أن تتحول، أو تتغير، إلى شــكل آخر. وقد كان إلحدى الســالتين اللتين درســهما غالف من السكريات، في حين لم تكن للســالة األخرى ذلك الغالف. والســالة المحاطة بغالف من الســكر  تســبب التهاب الرئة، وسماها الساللة الملســاء  S.  أما الساللة غير المحاطة فال  تســبب التهاب الرئة، وسماها بالخشــنة   R تبدو حواف مستعمرات الساللة  R   خشنة نتيجة عدم وجود غالف يحيط بها.',
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
        ),
      ),
    ),
    SingleChildScrollView(
      key: ValueKey(13),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "تتبع تجربة جريفيث في ،تالحظ أن خاليا الساللة S الحية قتلت الفأر، في حين لم تقتل خاليــا   R الحية الفأر، ولم تقتل خاليا   S   الميتة الفأر  أيض  ا. ومع ذلك، فعندما حض  ر جريفيث خليطا من خاليا   R   الحية وخاليا S الميتة وحقن الفأر بهذا الخليط مات الفأر. عزل جريفيث خاليا بكتيريا حية من  الفأر الميت. وعندما زرعت هذه البكتيريا وجد أن لديها الصفة الملساء. ويشير هذا إلى أن العامل المســبب للمرض انتقل من البكتيريا الميتة   S   إلى البكتيريا  حدث من البكتيريا الحية   R إلى الحي  R ،   ّ فاســتنتج جريفيث أن هناك تحوال البكتيريا الحية S   وكانت هذه بداية البحوث في عوامل التحول",
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/grif.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ])),
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
                padding: const EdgeInsets.all(10),
                child: Text(
                  'أفري Avery ',
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
                padding: const EdgeInsets.all(10),
                key: ValueKey(3),
                child: Text(
                  'في عام 1944م تعرف أفري وزملاؤه الجزيء الذي حول البكتيريا من السلالة R إلى السلالة ؛ فقد عزل أفري جزيئات كبيرة مختلفة مثل DNA وبروتين ودهون من خلايا البكتيريا (S) الميتة، وقام بتعريض الخلايا البكتيرية الحية (R) للجزيئات الكبيرة على نحو منفصل، وتحولت الخلايا (R) إلى خلايا (S) عند تعريضها لجزيئات DNA ، فاستنتج أفري أنه عند قتل الخلايا (S) في تجربة جريفيث تحررت جزيئات DNA ، فاستقبلت بعض خلايا البكتيريا (R) جزيئات DNA هذه، مما أدى إلى تغيير خلايا البكتيريا (R) إلى خلايا من النوع (S).',
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
        ),
      ),
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
                padding: const EdgeInsets.all(10),
                child: Text(
                  'هيرشي  وتشيسي Chase and Hershey ',
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Screenshot_110.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                key: ValueKey(4),
                child: Text(
                  'في عام 1952م، نشــر العالمان ألفرد هيرشي ومارثا تشيس نتائج تجاربهما التي وفرت الدليــل الدامغ على أن DNA هو عامــل التحول. وقد تضمنــت تجاربهم الفيروس اآلكل للبكتيريــا   البكتيروفاج ، وهو نــوع من الفيروســات يهاجم البكتيريــا. وهناك عامالن جعال تجربة هيرشــي وتشــيس مالئمة إلثبــات أن DNA هو المادة الوراثية. أولهما أن الفيروس الاكل للبكتيريا المستعمل  فــي التجربة كان مكونا من DNA وبروتيــن فقط. وثانيهما أن ِن الفيروسات ال َ تستطيع أن تتضاعف بنفسها. لذا يجب أن تحق الفيروســات مادتها الوراثية داخل خاليا حية لكي تتمكن من َ  ز هيرشــي وتشــيس مكوني الفيروس DNA التكاثر. وقد مي حقن داخل البكتيريا،  والبروتين ؛ ليحددا أي هذين المكونين ي لمعرفة أي هذين المكونين هو المادة الوراثية . ',
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
        ),
      ),
    ),
    SingleChildScrollView(
      key: ValueKey(5),
      child: Container(
        color: Color.fromARGB(255, 5, 50, 80),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'العلامات المشعة Labeling Radioactive',
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
              key: ValueKey(5),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'اســتعمل هيرشي  وتشيس تقنية تسمى العالمات باإلشعاع لتتبع DNA والبروتين عندمــا تهاجم الفيروســات اآلكلة للبكتيريا خ يــا البكتيريا وتتكاثر داخلها، وقد حقن هذان العالمان مجموعة من الفيروســات بالفوسفور المشع  32P .  ولما كانت البروتينات ال تحتوي على فوســفور، لذا سيكون DNA فقط وليس البروتين هو الجزيء المشــع. وقــد قام هذان العالمان  أيضــا بحقن مجموعة أخرى من الفيروســات اآلكلة للبكتيريا بالكبريت المشــع 35 S  ولما كانــت البروتينات تحتوي على الكبريت وال تحتــوي عليه جزيئات DNA فإن البروتينات هي التي ستشــع وليس DNA. جعل هيرشــي وتشيس مجموعتي الفيروســات تهاجمان البكتيريا. وعندما تهاجم الفيروســات البكتيريا تلتصق بســطحها الخارجي وتحقــن مادتها الوراثية  داخلها. ثم عزلت البكتيريا المصابة عن الفيروسات.',
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
        ),
      ),
    ),
    SingleChildScrollView(
      key: ValueKey(6),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'تتبع   DNA Tracking  -  DNA',
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
                key: ValueKey(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/DnaTracking.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'تفحص هيرشي وتشيس المجموعة 1  التي حقنت بـ 32P ،ووجــدا أن DNA  الفيروس المميز بالمادة المشــعة حقن داخل الخلية البكتيرية. وبعد فترة من الزمن وجدا أن الفيروسات التي تكاثرت داخل البكتيريا المصابــة وخرجت منها تحوي32P ،  وهذا يشــير أيضا إلــى أن DNA هو الذي يحمل المعلومات الوراثية. وعندما فحصا المجموعة 2 المميزة بـ 35S المشــع وجدا أن البروتينات المميزة بالمادة المشعة بقيت خارج الخاليا البكتيرية؛ ألنه لم يوجد أي35S في الداخل. حيث تضاعفت الفيروســات داخل خاليــا البكتيريا، مما يشــير إلى أن المادة الوراثية الفيروســية دخلت البكتيريا. يلخص الجدول 1-9 النتائج التي توصل إليها هيرشي وتشيس من تجربتهما.  علــى نتائجهما اســتنتجا أن DNA  الفيــروس حقن داخــل الخلية ووفر بنــاء المعلومات الوراثية المطلوبة لبناء فيروســات جديدة. وقد أعطت هذه التجربة ا على أن DNA وليس البروتين، هو المادة الوراثية التي يمكن أن تنتقل  دليال قوي من جيل إلى جيل في الفيروسات.',
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
      key: ValueKey(7),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'تركيب د.ن.أ Structure DNA ',
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
                key: ValueKey(7),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/tarkiip.jfif'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'بعد تجربة هيرشي وتشيس أصبح العلماء أكثر ثقة أن DNA هو المادة الوراثية. وقد أدت الأدلة إلى تعرّف المادة الوراثية.',
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
      key: ValueKey(8),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ' النيوكليوتدات  Nucleotides',
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/nikol.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'في عام 1920م حدد عالم الكيمياء الحيوية  ليفين التركيب األساســي للنيوكليوتيدات التي ت  كــون DNA .فالنيوكليوتيدات وحــدات بنائيــة لألحمــاض النووية، وتتكون من ســكر خماســي الكربون، ومجموعة فوسفات وقاعدة نيتروجينية.الحمضان النوويان الموجودان في الخاليا الحية هما: DNA و RNA .وتحتوي النيوكليوتيدات في DNA على سكر رايبوز منقوص األكسجين، ومجموعة فوسفات وإحدى أربع قواعد نيتروجينية هي: األدينين والجوانين والسايتوسين والثايمين.',
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
                  key: ValueKey(8),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'وتحتوي نيوكليوتيدات RNA على سكر رايبوز، ومجموعة فوسفات، وإحدى أربع قواعد نيتروجينية هي: األدينين والجوانين والسايتوســين واليوراســيل. تجــد أن الجوانين   G   واألدينين   A   قواعد نيتروجينية ثنائية الحلقات. وهذا النوع من القواعد يســمى قواعد البيورين. أما السايتوســين   C   واليوراسيل   U   والثايمين   T   فهي قواعد نيتروجينية ذات حلقة واحدة، وتســمى قواعد بيريميدين.',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'تشارجاف Chargaff',
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
                key: ValueKey(9),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'حلل إروين تشارجاف   عام 1940م  كمية األدينين والجوانين والثايمين والسايتوســين في DNA ألنواع مختلفة من المخلوقات  الحية، ونشــر جزء من بيانات تشــارجاف عام 1950م، وأن كمية وجد تشــارجاف أن كمية الجوانين تساوي كمية السايتوسين تقريب   ا في النوع الواحد. وسمي هذا الاكتشاف قاعدة تشارجاف : A = T . C = G ',
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
                  width: 200,
                  height: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Screenshot_111.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
    SingleChildScrollView(
      key: ValueKey(10),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                key: ValueKey(10),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'ويلكنز Wilkins  ',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'اســتخدم ويلكنز تقنية تسمى تشتت األشعة السينية، وهي تقنية تتضمن تصويب األشــعة الســينية على جزيء DNA .وفي عام 1951م، انضمت فرانكلين إلــى الفريق. وهناك التقطت الصورة رقم 51 المشــهورة اآلن، وجمعت بيانات استخدمها بعد ذلك واطسون وكريك. أن DNA هو جزيء حلزوني مزدوج double ، مكون من سلســلتين من النيوكليوتيدات helix  ،أو على شــكل ســلم ملتو  ملتفتيــن إحداهما حول األخــرى. وقد حدد واطســون وكريــك التركيب الحلزوني المزدوج لجزيء DNA  الحقا، حيث اســتخدما بيانات فرانكلين وبيانات رياضية أخرى. وجزيء DNA هــو المادة الوراثية لكل المخلوقات  الحية، ومكون من سلسلتين من النيوكليوتيدات، كل منهما متمم لآلخر. وهي  أشــرطة ملتفة بعضها حول بعــض بدقة ليكونا الشــكل الحلزوني المزدوج، فتبارك الله أحسن الخالقين.',
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
      key: ValueKey(11),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  key: ValueKey(11),
                  child: Text(
                    'واطسون وكريك Crick and Watson ',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'شــاهد واطسون وكريك صورة  فرانكلين لتشــتت األشعة الســينية. وقد قاس واطســون وكريك معا عرض الجــزيء الحلزوني والمســافات بين القواعد مســتخدمين بيانات فرانكلين وبيانات تشــارجاف، وقاما ببناء نموذج لجزيء DNA المــزدوج يتوافق مع أبحاث الاخرين. وقد اشتمل نموذجهم المقترح على بعض الخصائص المهمة الاتية.',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ': 1  سلســلتين خارجيتين تتكونان من ســكر الرايبوز المنقوص األكســجين وفوسفات بشكل متبادل.  يرتبط السايتوسين والجوانين معا.',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ':  2  بثالث روابط هيدروجينية.',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ':  3 يرتبط الثايمين واألدينين معا برابطتين هيدروجينيتين.',
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
      key: ValueKey(12),
      child: Container(
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'تركيب DNA structure DNA ',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'يحاكي جزيء DNA  على الأغلب الســلم َ المنقوص األكسجين الملتوي؛ حيث يمثل حاجز الحماية   الدرابزين  للسلم، السكر والفوسفات بشكل متبادل. وتشكل أزواج القواعد النيتروجينية   السايتوسين -  الجوانين أو الثايمين - األدينين  درجات هذا السلم. وترتبط البيريميدينات دائما بالبيورينات، فتحافظ بذلك على البعد الثابت لحاجزي الحماية - سلسلتي DNA - في السلم. هذا الترابط المقترح للقواعد يفسر أيضا نتائج تشارجاف، الذي اقترح أن كمية البيريميدينات تســاوي كمية البيورينات في عينة جزيء DNA .لذا فإن A + G = T + C ، أو أن قواعد البيريميدينات تساوي قواعد البيورينات. تستخدم أزواج القواعد المتممة لوصف االرتباط الدقيق بين قواعد البيورينات والبيريميدينات بين سلسلتي الأحماض النووية. وهي خاصية تضاعف جزيء DNA التي يمكن من خاللها للسلسلة األصلية أن تحدد ترتيب القواعد في السلسلة الجديدة.',
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
                  width: 200,
                  height: 200,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/trk.jfif'),
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
                  padding: const EdgeInsets.all(10),
                  key: ValueKey(13),
                  child: Text(
                    'الاتجاه Orientation ',
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'من الصفات الفريدة لجزيء DNA اتجاه أو ترتيب السلسلتين؛ حيث يمكن ترقيم الكربون في المركبات العضوية   وهي هنا السكر . ويوضح اتجاه ذرات الكربون المرقمة في جزيئات السكر في كل سلسلة من سالسل DNA .فتكون بداية االرتباط في السلسلة العلوية عند الكربون قرأ (خمسة شرطة)  وينتهي االرتباط عند رقم 5 في ســكر الرايبوز فتسمى 5  ي قرأ (ثالثة الكربون رقم 3 في ســكر الرايبوز عند نهاية السلســلة، فتســمى 3  ي شــرطة) . ويقال إن السلسلة تترتب من 5 إلى 3 .بينما تترتب السلسلة الاخرى الموازية في االتجاه المعاكس من 3 إلى 5 . ســمى التوازي المتعاكس، وهناك ترتيب السلسلتين هذا ي طريقة أخرى توضح الترتيب المتوازي المتعاكس لسلســلتي DNA َ بأخذ قلم ْي رصاص ووضعهما بحيث يكون رأس أحدهما بجوار ممحاة القلم الآخر.',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 20,
        backgroundColor: Color.fromARGB(255, 0, 50, 85),
        title: Text(
          ' DNA : The Genetic Material',
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
