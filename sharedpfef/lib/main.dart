import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  var t1=TextEditingController();
  var value;
  @override
  void initState(){
    super.initState();
  getValue();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: t1,
                keyboardType: TextInputType.text,
                decoration:InputDecoration(
                  label: Text("Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9)
                  ),
                  hintText: "Enter your Name",
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(onPressed: () async {
              var prefs=await SharedPreferences.getInstance();
              prefs.setString("Name", t1.text.toString());
            },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                  foregroundColor: Colors.black
                ),
                child: Text("Save")),
            Container(
              height:200 ,
              width: 200,
              color: Colors.blueAccent,
            ),
            Text("Welcome Mr. $value",style: TextStyle(fontSize: 39,fontWeight: FontWeight.bold),)
          ],
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getValue()async {
    var prefs=await SharedPreferences.getInstance();
    value=prefs.getString("Name");
    setState(() {

    });
  }
}
