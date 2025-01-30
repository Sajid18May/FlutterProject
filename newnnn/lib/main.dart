
import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
            primaryColor: Colors.lightBlueAccent,
      ),
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget{
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    List arr=["Samir","Vishal","Rohit","Ankita","Anish","Ronita"];
    return Scaffold(
      appBar:AppBar(
        title: Text("DashBoard"),
      ),
          body:ListView.separated(itemBuilder:(context,index){
            return ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: Text(arr[index]),
              subtitle: Text("Hi"),
              trailing: Icon(Icons.add),
            );
          }
              , separatorBuilder: (context,index){
                return Divider(height: 6,thickness: 2,);
              }, itemCount: arr.length)
    );
  }

}
