import 'questions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Quizzer());
}

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[];

  int quenum=0;
  List<Question> questionBank=[
  Question(q:'The condition in a WHERE clause can refer to only one value.',a: false ),
  Question(q:'System calls are the classical method of enabling user processes to interact with the kernel',a: true ),
  Question(q:'The SELECT command, with its various clauses, allows users to query the data contained in the tables and ask many different questions or ad hoc queries.',a: true ),
  Question(q:'SQL provides the AS keyword, which can be used to assign meaningful column names to the results of queries using the SQL built-in functions.',a: true ),
  Question(q:'A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.',a: false )
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
            child:Padding(
                padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questionBank[quenum].quesText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctans=questionBank[quenum].quesAns;
                if(correctans==true){
                  print("user got it right");
                }else{
                  print("user got it wrong");
                }
                setState(() {
                  quenum++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctans=questionBank[quenum].quesAns;
                if(correctans==false){
                  print("user got it right");
                }else{
                  print("user got it wrong");
                }
                setState(() {
                  quenum++;
                });
              },
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.check,
              color: Colors.green,
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
        ),
      ],
    );

  }
}

/*
Q1=The condition in a WHERE clause can refer to only one value.-False
Q2=The SELECT command, with its various clauses, allows users to query the data contained in the tables and ask many different questions or ad hoc queries.-True
Q3=SQL provides the AS keyword, which can be used to assign meaningful column names to the results of queries using the SQL built-in functions.-True
Q4=A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.-False
* */