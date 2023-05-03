import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/Quiz.png",
          width: 300,
          color:const  Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 40,),
          Text("Learn flutter the fun way!", 
          style: GoogleFonts.lato(
            color:const Color.fromARGB(255, 237, 223, 252),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )
             ),
             const SizedBox(height: 20,),
             OutlinedButton.icon
             (onPressed: startQuiz,
             style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
             ),
             icon:const  Icon(Icons.arrow_right_alt_rounded),
            label:const  Text("Start Quiz"))
        ],
      )
        );
  }
}