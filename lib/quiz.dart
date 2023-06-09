import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/first_screen.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

 List<String> selectedAnswers = [];

  var activeScreen= "first-screen";

  void switchScreen(){
    setState(() {
      activeScreen = "question_screen";
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        // selectedAnswers= [];
        activeScreen ='results-screen';
      });
    }
  }
  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = FirstScreen(switchScreen);

    if(activeScreen == "question_screen"){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
    if(activeScreen == 'results-screen'){
      screenWidget =  ResultsScreen(
        chosenAnswer: selectedAnswers,
        onRestart: restartQuiz,
        );
    }
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
        decoration:const  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13,151),
               Color.fromARGB(255, 107, 15,168)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
        ),
        child: screenWidget
        ),
      ),
    );
  }
}