import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  // startQuiz is a function, define in quiz.dart file as a switchScreen and passed in this file as an argument in the construction function

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // opacity--
          // 1st Approach   {Not Recommended}
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 200,
          //   ),
          // ),

          // 2nd Approch
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(145, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text('Learn Flutter the fun way!',
              // style: TextStyle(
              //   color: Colors.white,
              //   fontSize: 20,
              // ),

              // Google font -----
              style: GoogleFonts.lobster(
                color: Colors.white,
                fontSize: 30,
              )),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
