import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';



class LessonScreen3 extends StatefulWidget {
  final int currentPageIdx; // Define the named parameter here

  LessonScreen3({required this.currentPageIdx});

  @override
  _LessonScreen3State createState() => _LessonScreen3State();
}

class _LessonScreen3State extends State<LessonScreen3> {
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

    // key: ValueKey(1),

    SingleChildScrollView(
      child: Container(
          key: ValueKey(1),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'المبدأ الأساسي  Central Dogma',
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
                      image: AssetImage('assets/icons/CentralDogma.jfif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'احدى خصائص الـ DNA  المهمة، والتي لم تحل بعد اكتشــاف واطسون وكريك، هي كيف يســتخدم الـ DNA بوصفه شــفرة وراثية ضرورية في بناء البروتين؛ حيث تعمل هذه البروتينات بوصفها وحدات بنائية للخاليا واإلنزيمات. َن علماء الوراثة أن آلية قراءة الجينات والتعبير عنها تتم من DNA إلى RNA ،ثم وقد بي ا من البكتيريا إلى البروتينات. وتحدث هذه العملية في جميع المخلوقات الحية، بدء حتى اإلنسان. ويسمي العلماء هذه اآلليات المبدأَ  األساسي في علم األحياء: تنسخ شفرات DNA إلى RNA الذي يوجه عملية بناء البروتين',
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
                    'جزيء RNA ',
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
                    'حمض نووي شبيه بـ DNA .يتكون RNA من سكر رايبوز، والقاعدة  من الثايمين الموجود في DNA ،وهو عادة شريط منفرد. النيتروجينية اليوراسيل بدال وهناك ثالثة أنواع من RNA موجودة في الخاليا الحية، هي: جزيئات RNA الرسول RNA messenger   mRNA ، وهي سالسل طويلة من نيوكليوتيدات RNA بوصفها سلسلة متممة لسلسلة واحدة من DNA ،  وتنتقل من النواة إلى الرايبوسومات لتوجه بناء بروتين محدد. وRNA الرايبوسومي RNA ribosomal   rRNA ، وهو نوع من RNA  يرتبط مع البروتينات ليكون الرايبوسومات في السيتوبالزم. أما النوع الثالث من RNA فهو RNA الناقل RNA transfer   tRNA ، وهو قطع صغيرة من نيوكليوتيدات  RNA تنقل األحماض األمينية إلى الرايبوسومات. ويقارن بين تركيب الانواع الثلاثة من RNA ووظائفها.',
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
                      image: AssetImage('assets/icons/RNA1.webp'),
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
          key: ValueKey(3),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'عملية النسخ Transcription ',
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
                    'تتضمن الخطوة األولى في بناء RNA من DNA عملية تسمى النسخ transcription .وتنتقل خالل هذه العملية شفرة DNA إلى mRNA في النواة. ويمكن بعد ذلك لـ mRNA أن يأخذ الشفرة إلى السيتوبالزم لبناء في النواة، البروتين.ينفك التواء DNA جزئي ثم يرتبط به إنزيم بلمرة RNA polymerase RNA ،وهو إنزيم يوجه بناء RNA ، بارتباطه في منطقة محددة؛ حيث تبدأ عملية بناء mRNA .وكلما انفكت سلسلة DNA  قام إنزيم بلمرة RNA ببناء mRNA ،كما يتحرك على طول أحد سالســل  DNA في االتجاه 3 إلى 5 . وتسمى سلسلة DNA التي يقرؤها إنزيم بلمرة RNA السلســلة األساسية القالب. وسلسلة mRNA سلســلة متممة لنيوكليوتيدات DNA .  وتصنع نسخة RNA الرسول في الاتجاه 5 إلى 3 ،بإضافة كل نيوكليوتيد RNA جديد إلى الجهة 3 . حيث يحل اليوراسيل محل الثايمين عند بناء جزيء mRNA .وفــي النهاية ينتــج mRNA ،وينفصل إنزيم بلمــرة RNA عن DNA . ويتحرك mRNA الجديد بعد ذلك من النواة إلى السيتوبالزم عبر الثقوب النووية.',
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
                    'معالجة RNA processing RNA ',
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
                    'عندمــا قارن العلماء مناطق الشــفرة بين DNA و RNA الذي ينتج في نهاية األمر البروتين وجدوا أن شفرة mRNA أقصر من شفرة DNA .وبعد الفحص الدقيق اكتشفوا أن الشفرة على DNA  تحوي قطعا متسلســلة ومرتبة غير موجودة في RNA النهائي، وتسمى هذه القطع اإلنترونات    المناطق غير المشــفرة  introns .  أما القطع الفعالة التي تبقى في RNA النهائي فتسمى اإلكسونات    المناطق المشفرة  exons .في المخلوقات الحية الحقيقية ســمى mRNA  األصلي الذي ينتج في النواة أحيانا mRNA الاولي غير النوى ي المعالج ، ويحوي شــفرة DNA كلها. وقبل أن يغــادر RNA األولي النواة يتم التخلص مــن اإلنترونات فيه. ومن معالجــات mRNA األولي األخرى إضافة على النهاية 5 ،  وكذلك إضافة ذيل مكون من نيوكليوتيدات األدينين غالف واق ســمى عديد األدينين علــى النهاية 3 من mRNA .وقــد أظهرت األبحاث أن ي  ف الرايبوســومات رغــم أن أهمية عديد   ســاعد أيضا على تعر الغالف الواقي ي األدينين A ما زالت غير معروفة.',
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
                      image: AssetImage('assets/icons/RNA2.jfif'),
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
          key: ValueKey(5),
          color: Color.fromARGB(255, 5, 50, 80),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'الشفرة The Code  ',
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
                      image: AssetImage('assets/icons/code.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'بدأ علماء األحياء يفترضون أن تعليمــات بناء البروتين موجودة في  DNA . لقــد عرفوا أن الطريقة الوحيدة التــي يختلف فيها DNA  بين  المخلوقــات الحية هي ترتيب القواعد. كما عــرف العلماء أيضا أن  تستخدم في صناعة البروتينات، لذا فقد عرفوا هناك 20  حمضا أميني أن DNA يجب أن يوفر على الاقل 20 شفرة وراثية مختلفة.',
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
                  'الترجمة Translation ',
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
                  'عندمــا ي الرايبوســومات. وهذا يعني أن mRNA يجب أن يغادر النواة ويدخل السيتوبالزم في المخلوقات الحية الحقيقية النوى. وعندما يصبح في السيتوبالزم ترتبط النهاية 5  بالرايبوسوم. فتبدأ هنا قراءة الشفرة وترجمتها لبناء بروتين من خالل عملية تسمى الترجمة translation .تتبع الشكل وأنت تدرس الترجمة.',
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
                  'في الترجمة تعمل جزيئات tRNA عمل مفسرات لترتيب الكودونات على mRNA . وينطوي tRNA على شــكل ورقة البرســيم، ويتم تنشــيطه بإنزيم يعمل على ربط حمــض أميني محدد على النهاية 3 . وفي منتصف الشــريط المطوي هناك ترتيب سمى الكودون   شفرة  المضاد. وكل كودون مضاد مكون من 3 قواعد نيتروجينية ي متمم للكودون على mRNA .وعلى الرغم من أن الشــفرة على DNA و RNA ',
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
                    image: AssetImage('assets/icons/translate.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
                    'دور الرايبوسوم  The Role of Ribosome',
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
                    'دور الرايبوسوم The role of ribosome يتكون الرائبوسوم من وحدتين بنائيتين، وهاتان الوحدتان لا تكونان مرتبطتين معا عندما لا تدخلان ضمن عملية ترجمة البروتين. وعندما يترك mRNA النواة تجتمع وحدتا الرائبوسوم معا وترتبطان بـ mRNA لإنتاج الرايبوسوم الفعال. وعندما يتم ارتباط mRNA مع الرايبوسوم يتحرك tRNA مع كودونه المضاد CAU الذي يحمل الميثيونين ويرتبط مع كودون البدء - AUG على mRNA على النهاية 5 من mRNA. يوجد في تركيب الرايبوسوم أخدود (شق) يسمى الموقع P، الذي يتحرك نحوه tRNA المتمم لـ mRNA . ثم يتحرك tRNA آخر نحو أخدود آخر في الرايبوســـوم يسمى الموقع ،A، يحوي الكودون الثاني لـ mRNA ، هو UUU الذي يشفر الحمض الأميني فينيل ألانين؛ ويكون كودونه المضاد على tRNA  هو   . AAA',
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
                      image: AssetImage('assets/icons/ripos.webp'),
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
              children: [Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'يعمل جزء من rRNA في الرائبوسوم عمل إنزيم محفز لتكوين رابطة بين الحمض الأميني الجديد في الموقع A والحمض الأميني في الموقع P. وعندما يتم ربط الحمضين الأمينيين ينتقل tRNA في الموقع P إلى الموقع الثالث، ويُسمى الموقع ، حيث يغادر tRNA الرائبوسوم. ويتحرك الرايبوسوم بعد ذلك، حيث يتغير موقع tRNA في الأخدود A إلى الموقع سيدخل الآن tRNA جديد الموقع A، متمما الكودون الجديد التالي على mRNA.',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
        ])),
      ),
  ];

  // int _currentPageIdx = 0;
  // SharedAxisTransitionType _transitionType = SharedAxisTransitionType.vertical;

  @override
  Widget build(BuildContext context) {
    // _currentPageIdx = widget.currentPageIdx;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
        title: Text(
          ' DNA , RNA and Protein ',
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
                    child: const Text('الـسـابـق',style: TextStyle(fontFamily: "Cairo")),
                  ),
                   TextButton(
                    onPressed: this._currentPageIdx == 0
                        ? null
                        : () => setState(() => this._currentPageIdx=0),
                    child: const Text('الـرئيـسـيـة',style: TextStyle(fontFamily: "Cairo",fontWeight: FontWeight.bold,fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: this._currentPageIdx == 7
                        ? null
                        : () => setState(() => this._currentPageIdx++),
                    child: const Text('الـتـالـي',style: TextStyle(fontFamily: "Cairo"),),
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
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: this._currentPageIdx == 0
//                         ? null
//                         : () => setState(() => this._currentPageIdx--),
//                     child: const Text('BACK'),
//                   ),
//                   ElevatedButton(
//                     onPressed: this._currentPageIdx == 6
//                         ? null
//                         : () => setState(() => this._currentPageIdx++),
//                     child: const Text('NEXT'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: _buildControlBar(),
//     );
//   }

//   Widget _buildControlBar() {
//     return Container(decoration: BoxDecoration(
//       gradient: LinearGradient(
//       colors: [
//         Color.fromARGB(206, 10, 10, 10),
//         Color.fromARGB(255, 0, 68, 117)
//       ]
//     )
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListTile(
//            title: const Text('Transition Type',
//              style: TextStyle(color: Colors.white),),
//             trailing: DropdownButton<SharedAxisTransitionType>(
//               value: _transitionType,
//               items: [
//                 for (final val in SharedAxisTransitionType.values)
//                   DropdownMenuItem(
//                     value: val,
//                     child: Text(
//                       val
//                           .toString()
//                           .substring('SharedAxisTransitionType.'.length),
//                     ),
//                   )
//               ],
//               onChanged: (SharedAxisTransitionType? val) {
//                 if (val != null) setState(() => this._transitionType = val);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LessonScreen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( backgroundColor: Color.fromARGB(255, 5, 50, 80),
//       // appBar: NewGradientAppBar(
//       //     title: Text(
//       //       'LESSON 3',
//       //       style: TextStyle(
//       //         color: Color.fromARGB(255, 255, 255, 255),
//       //       ),
//       //     ),
//       //     centerTitle: true,
//       //     gradient: LinearGradient(colors: [
//       //       Colors.blue,
//       //       Color.fromARGB(255, 44, 176, 39),
//       //       Color.fromARGB(255, 21, 255, 0)
//       //     ])),
//            body: ListView(children: [
//               Stack(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
//               height: 70,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(15),
//                   bottomRight: Radius.circular(15),
//                 ),
//                 gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   stops: [0.1, 0.5],
//                   colors: [
//                     Color.fromARGB(255, 81, 255, 0),
//                      Color.fromARGB(255, 0, 175, 0),

//                   ],
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "LEESSON 3",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "Poppins",
//                           fontSize: 24,
//                           color: Color.fromARGB(255, 5, 50, 80),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 0,
//               top: 15,
//               child: GestureDetector(
//                 onTap: () => Navigator.pop(context),
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   child: Icon(
//                     Icons.arrow_back,
//                     color: Color.fromARGB(255, 5, 50, 80),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//     Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'المبدأ الأساسي  Central Dogma',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
//  InstaImageViewer(
//   child: Container(
//     width: 200,
//     height: 200,
//     alignment: Alignment.topLeft,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('assets/icons/CentralDogma.jfif'),
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'احدى خصائص الـ DNA  المهمة، والتي لم تحل بعد اكتشــاف واطسون وكريك، هي كيف يســتخدم الـ DNA بوصفه شــفرة وراثية ضرورية في بناء البروتين؛ حيث تعمل هذه البروتينات بوصفها وحدات بنائية للخاليا واإلنزيمات. َن علماء الوراثة أن آلية قراءة الجينات والتعبير عنها تتم من DNA إلى RNA ،ثم وقد بي ا من البكتيريا إلى البروتينات. وتحدث هذه العملية في جميع المخلوقات الحية، بدء حتى اإلنسان. ويسمي العلماء هذه اآلليات المبدأَ  األساسي في علم األحياء: تنسخ شفرات DNA إلى RNA الذي يوجه عملية بناء البروتين',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'جزيء RNA ',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'حمض نووي شبيه بـ DNA .يتكون RNA من سكر رايبوز، والقاعدة  من الثايمين الموجود في DNA ،وهو عادة شريط منفرد. النيتروجينية اليوراسيل بدال وهناك ثالثة أنواع من RNA موجودة في الخاليا الحية، هي: جزيئات RNA الرسول RNA messenger   mRNA ، وهي سالسل طويلة من نيوكليوتيدات RNA بوصفها سلسلة متممة لسلسلة واحدة من DNA ،  وتنتقل من النواة إلى الرايبوسومات لتوجه بناء بروتين محدد. وRNA الرايبوسومي RNA ribosomal   rRNA ، وهو نوع من RNA  يرتبط مع البروتينات ليكون الرايبوسومات في السيتوبالزم. أما النوع الثالث من RNA فهو RNA الناقل RNA transfer   tRNA ، وهو قطع صغيرة من نيوكليوتيدات  RNA تنقل األحماض األمينية إلى الرايبوسومات. ويقارن بين تركيب الانواع الثلاثة من RNA ووظائفها.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'عملية النسخ Transcription ',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'تتضمن الخطوة األولى في بناء RNA من DNA عملية تسمى النسخ transcription .وتنتقل خالل هذه العملية شفرة DNA إلى mRNA في النواة. ويمكن بعد ذلك لـ mRNA أن يأخذ الشفرة إلى السيتوبالزم لبناء في النواة، البروتين.ينفك التواء DNA جزئي ثم يرتبط به إنزيم بلمرة RNA polymerase RNA ،وهو إنزيم يوجه بناء RNA ، بارتباطه في منطقة محددة؛ حيث تبدأ عملية بناء mRNA .وكلما انفكت سلسلة DNA  قام إنزيم بلمرة RNA ببناء mRNA ،كما يتحرك على طول أحد سالســل  DNA في االتجاه 3 إلى 5 . وتسمى سلسلة DNA التي يقرؤها إنزيم بلمرة RNA السلســلة األساسية القالب. وسلسلة mRNA سلســلة متممة لنيوكليوتيدات DNA .  وتصنع نسخة RNA الرسول في الاتجاه 5 إلى 3 ،بإضافة كل نيوكليوتيد RNA جديد إلى الجهة 3 . حيث يحل اليوراسيل محل الثايمين عند بناء جزيء mRNA .وفــي النهاية ينتــج mRNA ،وينفصل إنزيم بلمــرة RNA عن DNA . ويتحرك mRNA الجديد بعد ذلك من النواة إلى السيتوبالزم عبر الثقوب النووية.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'معالجة RNA processing RNA ',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'عندمــا قارن العلماء مناطق الشــفرة بين DNA و RNA الذي ينتج في نهاية األمر البروتين وجدوا أن شفرة mRNA أقصر من شفرة DNA .وبعد الفحص الدقيق اكتشفوا أن الشفرة على DNA  تحوي قطعا متسلســلة ومرتبة غير موجودة في RNA النهائي، وتسمى هذه القطع اإلنترونات    المناطق غير المشــفرة  introns .  أما القطع الفعالة التي تبقى في RNA النهائي فتسمى اإلكسونات    المناطق المشفرة  exons .في المخلوقات الحية الحقيقية ســمى mRNA  األصلي الذي ينتج في النواة أحيانا mRNA الاولي غير النوى ي المعالج ، ويحوي شــفرة DNA كلها. وقبل أن يغــادر RNA األولي النواة يتم التخلص مــن اإلنترونات فيه. ومن معالجــات mRNA األولي األخرى إضافة على النهاية 5 ،  وكذلك إضافة ذيل مكون من نيوكليوتيدات األدينين غالف واق ســمى عديد األدينين علــى النهاية 3 من mRNA .وقــد أظهرت األبحاث أن ي  ف الرايبوســومات رغــم أن أهمية عديد   ســاعد أيضا على تعر الغالف الواقي ي األدينين A ما زالت غير معروفة.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'الشفرةCode  The',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// InstaImageViewer(
//   child: Container(
//     width: 200,
//     height: 200,
//     alignment: Alignment.topLeft,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('assets/icons/code.png'),
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'بدأ علماء األحياء يفترضون أن تعليمــات بناء البروتين موجودة في  DNA . لقــد عرفوا أن الطريقة الوحيدة التــي يختلف فيها DNA  بين  المخلوقــات الحية هي ترتيب القواعد. كما عــرف العلماء أيضا أن  تستخدم في صناعة البروتينات، لذا فقد عرفوا هناك 20  حمضا أميني أن DNA يجب أن يوفر على الاقل 20 شفرة وراثية مختلفة.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
//  Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'الترجمة Translation ',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'عندمــا ي الرايبوســومات. وهذا يعني أن mRNA يجب أن يغادر النواة ويدخل السيتوبالزم في المخلوقات الحية الحقيقية النوى. وعندما يصبح في السيتوبالزم ترتبط النهاية 5  بالرايبوسوم. فتبدأ هنا قراءة الشفرة وترجمتها لبناء بروتين من خالل عملية تسمى الترجمة translation .تتبع الشكل وأنت تدرس الترجمة.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'في الترجمة تعمل جزيئات tRNA عمل مفسرات لترتيب الكودونات على mRNA . وينطوي tRNA على شــكل ورقة البرســيم، ويتم تنشــيطه بإنزيم يعمل على ربط حمــض أميني محدد على النهاية 3 . وفي منتصف الشــريط المطوي هناك ترتيب سمى الكودون   شفرة  المضاد. وكل كودون مضاد مكون من 3 قواعد نيتروجينية ي متمم للكودون على mRNA .وعلى الرغم من أن الشــفرة على DNA و RNA ',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
//  InstaImageViewer(
//   child: Container(
//     width: 200,
//     height: 200,
//     alignment: Alignment.topLeft,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('assets/icons/translate.png'),
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'دور الرايبوسومThe Role of Ribosome',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//      fontSize: 20,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'دور الرايبوسوم The role of ribosome يتكون الرائبوسوم من وحدتين بنائيتين، وهاتان الوحدتان لا تكونان مرتبطتين معا عندما لا تدخلان ضمن عملية ترجمة البروتين. وعندما يترك mRNA النواة تجتمع وحدتا الرائبوسوم معا وترتبطان بـ mRNA لإنتاج الرايبوسوم الفعال. وعندما يتم ارتباط mRNA مع الرايبوسوم يتحرك tRNA مع كودونه المضاد CAU الذي يحمل الميثيونين ويرتبط مع كودون البدء - AUG على mRNA على النهاية 5 من mRNA. يوجد في تركيب الرايبوسوم أخدود (شق) يسمى الموقع P، الذي يتحرك نحوه tRNA المتمم لـ mRNA . ثم يتحرك tRNA آخر نحو أخدود آخر في الرايبوســـوم يسمى الموقع ،A، يحوي الكودون الثاني لـ mRNA ، هو UUU الذي يشفر الحمض الأميني فينيل ألانين؛ ويكون كودونه المضاد على tRNA  هو   . AAA',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),
//  InstaImageViewer(
//   child: Container(
//     width: 200,
//     height: 200,
//     alignment: Alignment.topLeft,
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage('assets/icons/ripos.webp'),
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// ),
// Align(
//   alignment: Alignment.topRight,
//   child: Padding(
//     padding: const EdgeInsets.all(10),
//     child: Text(
//       'يعمل جزء من rRNA في الرائبوسوم عمل إنزيم محفز لتكوين رابطة بين الحمض الأميني الجديد في الموقع A والحمض الأميني في الموقع P. وعندما يتم ربط الحمضين الأمينيين ينتقل tRNA في الموقع P إلى الموقع الثالث، ويُسمى الموقع ، حيث يغادر tRNA الرائبوسوم. ويتحرك الرايبوسوم بعد ذلك، حيث يتغير موقع tRNA في الأخدود A إلى الموقع سيدخل الآن tRNA جديد الموقع A، متمما الكودون الجديد التالي على mRNA.',
//        textDirection: TextDirection.rtl,
//       style: TextStyle(
//         fontFamily: 'Cairo',
//         color: Colors.white,
//         fontWeight: FontWeight.w400,
//       ),
//     ),
//   ),
// ),

//            ]
//            )
//     );
//   }
// }
