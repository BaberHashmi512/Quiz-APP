import 'package:adv_basics/models/quiz_questions.dart';

const questions = [
  QuizQuestion("What are the building blocks of Flutter UIs",
   [
    "Widgets",
    "Components",
    "Blocks",
    "Functions",
   ]
   ),
   QuizQuestion("How are Flutter UIs Built?",
   [
    "By combining widgets in code ",
    "By combining widgets in visual editor",
    "By defining widgets in config files",
    "By using Xcode for IOS and Android studio for android",
   ]
   ),
   QuizQuestion("What\s the purpose of statefull widgets",
   [
    "Update UI as data change",
    "Update data as Ui change",
    "Ignore data changes",
    "Render UI that does not depend on UI",
   ]
   ),
   QuizQuestion("Which widget you should try to use more often: Statelesswidget or Statefullwidget",
   [
    "Statelesswidget",
    "Statefullwidget",
    "Both are Equally good",
    "Non of the above",
   ]
   ),
   QuizQuestion("What happened if you change data in stateless widgets?",
   [
    "The UI is not updated ",
    "The UI is Updtae ",
    "The closest Statefull widget is updated",
    "Any nested Statefull widgets are updated",
   ]
   ),
   QuizQuestion("How should you update data inside of Statefullwidgets",
   [
    "By calling setState()",
    "By calling UpdateData()",
    "By calling UpdateUi()",
    "By calling updateState()",
   ]
   ),
];