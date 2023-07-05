// ignore_for_file: unnecessary_import, deprecated_member_use

import '../../widgets/background.dart';
import '../Alarms/alarmqubf.dart';
import 'question_model.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class QuizScreen2 extends StatefulWidget {
  @override
  State<QuizScreen2> createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: 
      // const Color.fromARGB(255, 5, 50, 80),
      body:  Stack(
        children: [
         
                      AnimatingBg2(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,

                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(0),
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.arrow_back,
              color:   Color.fromARGB(255, 1, 9, 54),
                      
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    MaterialButton(
                        padding: const EdgeInsets.all(0),
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.alarm_add_rounded,
              color:   Color.fromARGB(255, 1, 9, 54),
                      
                        ),
                        onPressed: () {
                          Navigator.push(context,
                MaterialPageRoute(builder: (context) => Alarmscreenqubf()));
                        },
                      ),
                  ],
                ),
                const Text(
                  "الـتـقــويـم الـقــبـلـي ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Cairo",
                  ),
                ),
                _questionWidget(),
                _answerList(),
                _nextButton(),
              ]),
            ),
        ],
      ),
      
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "الـسـؤال ${currentQuestionIndex + 1}/${questionList.length.toString()} ",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Cairo"),
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 154, 10, 190),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: "Cairo",
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: TextStyle(fontFamily: "Cairo"),
          textDirection: TextDirection.rtl,
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected
              ? answer.isCorrect
                  ? Colors.green
                  : Colors.red
              : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "إنــهـاء" : "الـتـالـي",
            style: TextStyle(fontFamily: "Cairo")),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 154, 10, 190),
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    double percentage = (score / questionList.length) * 100;
    int roundedPercentage = percentage.round();
    String title = isPassed ? "" : "";

    return AlertDialog(
      title: Text(
        title + " درجتك هي $roundedPercentage% ",
        style: TextStyle(
            color: isPassed ? Colors.green : Colors.redAccent,
            fontFamily: "Cairo"),
        textDirection: TextDirection.rtl,
      ),
      content: ElevatedButton(
        child: const Text(
          "إعــاده",
          style: TextStyle(fontFamily: "Cairo"),
        ),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}
