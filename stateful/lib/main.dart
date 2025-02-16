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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyHomeState();

}
class MyHomeState extends State<MyHomePage>{
  var  t1=TextEditingController();
  var  t2=TextEditingController();
  var result;
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: t1,
              keyboardType: TextInputType.number,


            ),
            SizedBox(
              height: 45,

            ),
            TextField(
              controller: t2,
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  int n1=int.parse(t1.text.toString());
                  int n2=int.parse(t2.text.toString());
                  result=n1+n2;
                  setState(() {
                  });
                }, child: Text('Add')),
                ElevatedButton(onPressed: (){
                  int n1=int.parse(t1.text.toString());
                  int n2=int.parse(t2.text.toString());
                  result=n1-n2;
                  setState(() {
                  });
                }, child: Text('Sub')),
                ElevatedButton(onPressed: (){
                  int n1=int.parse(t1.text.toString());
                  int n2=int.parse(t2.text.toString());
                  result=n1/n2;
                  setState(() {
                  });
                }, child: Text('Div')),
                ElevatedButton(onPressed: (){
                  int n1=int.parse(t1.text.toString());
                  int n2=int.parse(t2.text.toString());
                  result=n1*n2;
                  setState(() {
                  });
                }, child: Text('Mul')),
              ],
            ),
            Padding(
                padding:EdgeInsets.all(8.0),
            child: Text(
              "Result = $result",
              style: TextStyle(fontSize: 45,color: Colors.black45)
              ,)
              ,)
          ],
        ),
      ),
    ),
  );

}