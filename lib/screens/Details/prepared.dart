// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PreparedScreen extends StatelessWidget {
  var d = Container(
    height: 1,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.white,
          width: 1,
        ),
      ),
    ),
  );
  PreparedScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 11, 31),
      appBar:AppBar(
        elevation: 20,
          backgroundColor: Color.fromARGB(255, 0, 50, 85),
        title: Text(
          "الإعـداد / الإشـراف",
          style: TextStyle(
            color: Colors. white,

              fontFamily: "Cairo", fontSize: 25, fontWeight: FontWeight.w400),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.start,
        ),
        centerTitle: true,
      ),
      body: DefaultTextStyle(
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Cairo"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10), child: Image.asset("assets/icons/UNI.jpeg",width: 100,),),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'المملـكة العربية السعـودية',
                        textDirection: TextDirection.rtl,
                      ),
                      Text('وزارة التعليم'),
                      Text('جامعة أم القرى'),
                      Text('كلية التربية'),
                      Text('قسم المناهج وطرق التدريس'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              d,
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'فاعلية التكرارات المتباعدة ببيئة تعلم ذكية في تنمية التحصيل وحفض التلكؤ الأكاديمي لدى طالبات المرحلة الثانوية',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    textDirection: TextDirection.rtl,
                  )),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'إعداد  / الجوهرة محمد منصور المحمادي',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    textDirection: TextDirection.rtl,
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "إشراف  / د .  هنادي محمد مكي بخاري",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    textDirection: TextDirection.rtl,
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "أستاذ مساعد تقنيات التعليم كلية التربية جامعة أم القرى",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    textDirection: TextDirection.rtl,
                  )),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: 150, child: Image.asset("assets/icons/resbect.png")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
