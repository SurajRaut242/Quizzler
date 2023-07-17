import'question.dart';
int _questionNumber=0;
class QuizBrain{

  List<Question> _questionbank  = [
    Question(a: 'Some cats are actually allergic to humans', b:true),
    Question(a: 'You can lead a cow down stairs but not up stairs.',b: false),
    Question(a: 'Approximately one quarter of human bones are in the feet.',b: true),
    Question(a: 'A slug\'s blood is green.',b: true),
    Question(a: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',b: true),
    Question(a: 'It is illegal to pee in the Ocean in Portugal.', b: true),
    Question(
        a: 'No piece of square dry paper can be folded in half more than 7 times.',
        b: false),
    Question(
        a: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        b: true),
    Question(
        a: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        b: false),
    Question(
        a: 'The total surface area of two human lungs is approximately 70 square metres.',
        b: true),
    Question(a: 'Google was originally called \"Backrub\".', b: true),
    Question(
        a: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        b: true),
    Question(
        a: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        b: true),
  ];
  String getQuestionText(){
    return _questionbank[_questionNumber].questionText;
  }
  void nextQuestion(){
    if(_questionNumber < _questionbank.length-1 ){
      _questionNumber++;
    }
  }

 bool getCorrectAnswer(){
    return _questionbank[_questionNumber].questionanswer;
 }
}