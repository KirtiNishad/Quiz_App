import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basic/answer_button.dart';
import 'package:adv_basic/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void clickAnswer(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,

              // Google font --------------------
              style: GoogleFonts.oswald(
                color: const Color.fromARGB(211, 255, 255, 255),
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),

            // AnswerButton('answerText', () {})    //{when use positional Argument}

            // When use named argumment
            // AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answer[0], onTap: () {}),

            // Using Map method

            ...currentQuestion.getSuffledList().map(
              (item) {
                return AnswerButton(
                  answerText: item,
                  onTap: () {
                    clickAnswer(item);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
