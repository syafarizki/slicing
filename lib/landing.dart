import 'package:flutter/material.dart';
import 'login.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TalkDM",
      home: LandingPageView(),
    );
  }
}

class LandingPageView extends
StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 227, 146, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Text('TalkDM',
          style:TextStyle(
            fontFamily: "Hurricane",
            fontSize: 90,
            fontWeight: FontWeight.bold,
          ),
        ),
        Stack(
          alignment:Alignment.center,
          children: [
            Image.asset('assets/Object11.png',width: 400,height: 300,),
            Positioned(
              left: 220,
              bottom: 180,
              child: Image.asset("assets/Object21.png"),)
          ],
        ),
        Text(
          'Lets Talk with new friends',
          style: TextStyle(
            fontFamily:"Ibarra",
            fontSize:25,
            fontWeight:FontWeight.bold,
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(250),
            backgroundColor: Color.fromRGBO(26, 93, 26, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
          ),
          onPressed:(){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Login (),
            )
            );
          },
          child:Text(
            'Get Started',
            style: TextStyle(
              fontFamily:"Ibarra",
              fontSize:20,
              fontWeight:FontWeight.bold,
              color:Color.fromRGBO(241, 201, 59, 1),
              ),),
          ),
         ],
        ),
      ),
    );
  }
}