import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:quizz/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Questions>list=getQuestion();
  int curQuestion=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("simple quiz app",style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(height: 15,),
           
                Text("question ${curQuestion+1} / ${list.length} ",style: TextStyle(color: Colors.white,fontSize: 30),),
            
          
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
               alignment: Alignment.center,
                height: 100,width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child:Text("${list[curQuestion].text}",style: TextStyle(color: Colors.black,fontSize: 20),),
              
              ),
            ),
          SizedBox(height: 10,),
          Column(children: [
             for(Answer answer in list[curQuestion].answerlist)
             buttonAnswer(answer),
             nextButton(),
          ],)
          ],
        ),
      ),
    );
  
  }
  buttonAnswer(Answer answer){
    return Container(
      margin: EdgeInsets.all(10),
      child: AnimatedButton(
        onPressed: (){},
     child: Text(answer.text,style: TextStyle(color: Colors.black,fontSize: 20),),
     color: Colors.white,
      ),
    );
  }
  nextButton(){
    return Container(
      margin: EdgeInsets.all(10),
      child: AnimatedButton(
        width: 300,
        onPressed: (){},
     child: Text("next",style: TextStyle(color: Colors.black,fontSize: 20),),
     color: Colors.white,
      ),
    );
  }
}