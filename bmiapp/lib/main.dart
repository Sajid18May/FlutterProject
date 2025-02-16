import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var weightController=TextEditingController();
var heightController=TextEditingController();
var inchController=TextEditingController();
var result=" ";
var msg=" ";
var textColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff22223b),
        title: Text("BMI",style: TextStyle(color: Color(0xfff2e9e4)),),
      ),
      body: Container(
        color:Color(0xfff2e9e4) ,
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25,),
                TextField(
                  controller: weightController,
                  decoration:InputDecoration(
                    label: Text("Enter your Weight in KGs"),
                    prefixIcon: Icon(Icons.monitor_weight)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25),
                TextField(
                  controller: heightController,
                  decoration: InputDecoration(
                    label: Text("Enter your height in Feet"),
                    prefixIcon: Icon(Icons.height_rounded)
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 25,),
                TextField(
                  controller: inchController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter your height in Inches"),
                    prefixIcon: Icon(Icons.height_rounded)
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){
                  var weight=weightController.text.toString();
                  var height=heightController.text.toString();
                  var inch=inchController.text.toString();
                  if(weight!="" && height!="" && inch!=""){
                    var iWeight=int.parse(weight);
                    var iHeight=int.parse(height);
                    var iInch=int.parse(inch);
                    var tM=(iInch+iHeight*12)*0.0254;
                    var bmi=iWeight/pow(tM, 2);
                    if(bmi>25){
                      msg="You are OverWeight!!";
                      textColor=Colors.red;
                    }
                    else if(bmi<18){
                      msg="You are UnderWeight!!";
                      textColor=Colors.red;
                    }
                    else{
                      msg="You are Fit!!";
                      textColor=Colors.green;
                    }
                    setState(() {
                      result="$msg \n Your BMI is ${bmi.toStringAsFixed(2)}";
                    });
                  }
                  else {
                    setState(() {
                      result="Enter Positive non-zero vales";
                    });
                  }

                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff4a4e69),
                      foregroundColor: Color(0xfff2e9e4)
                    ),
                    child: Text('Calculate BMI')),
                SizedBox(height: 25,),
                Text(result,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                      color: textColor,//Color(0xff22223b),
                      fontWeight:FontWeight.w500,
                      fontSize:20,
                  ) ,
                ),
                  ],// This trailing comma makes auto-formatting nicer for build methods.
                ),
          ),
            ),
      ),
    );
  }
}
