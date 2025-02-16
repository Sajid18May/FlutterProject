import 'package:flutter/material.dart';
import 'package:multipage/main.dart';

class IntroPage extends StatelessWidget{
  var homeData;
  IntroPage(this.homeData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("NewItro"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Welcome $homeData",style: TextStyle(fontSize:45, fontWeight: FontWeight.bold ),),
            ElevatedButton(onPressed: (){
                Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent[100],
            ),
                child:Text("Back"),
            )
          ],
        ),
      ),
    );
  }

}