import 'questions.dart';
class QuizBrain{
  List<Question> _questionBank=[
    Question('The condition in a WHERE clause can refer to only one value.', false ),
    Question('System calls are the classical method of enabling user processes to interact with the kernel', true ),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded in half more than 7 times.', false),
    Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
    Question('The total surface area of two human lungs is approximately 70 square metres.', true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', true),
    Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', true),
    Question('The SELECT command, with its various clauses, allows users to query the data contained in the tables and ask many different questions or ad hoc queries.', true ),
    Question('SQL provides the AS keyword, which can be used to assign meaningful column names to the results of queries using the SQL built-in functions.', true ),
    Question('A SELECT statement within another SELECT statement and enclosed in square brackets ([...]) is called a subquery.', false )
  ];

  String getQueText(int quenum){
    return _questionBank[quenum].quesText;
  }
  bool correctAns(int quenum){
    return _questionBank[quenum].quesAns;
  }
}