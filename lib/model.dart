class Questions{
  String text;
  List<Answer>answerlist;
  Questions(this.text,this.answerlist);

}
class Answer{
  String text;
  bool isCorrect;
  Answer(this.text,this.isCorrect);

}
List<Questions>getQuestion(){
  List<Questions>list=[];
  list.add(Questions("who made flutter", [
    Answer("google", true),
        Answer("oppo", false),
    Answer("samsumg", false),
  ]), );

   list.add(Questions("who made flutter", [
    Answer("google", true),
        Answer("oppo", false),
    Answer("samsumg", false),
  ]), );
   list.add(Questions("who made flutter", [
    Answer("google", true),
        Answer("oppo", false),
    Answer("samsumg", false),
  ]), );
  return list;
  
}
