import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
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
      var emailText=TextEditingController();
      var passwordText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailText,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.indigo,
                      width: 2
                  )
                ),
                  enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                      color: Colors.blue,
                          width: 2
                      )
            ),
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Enter Username"
              ),
            ),
            Container(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: passwordText,
              obscureText: true,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      )
                  )
              ),
            ),
            Container(
              height: 15,
            ),
            ElevatedButton(onPressed: (){
              String email=emailText.text;
              String password=passwordText.text;
              print("Email "+email+" Pass "+password);
              setState(() {

              });
            }, child: Text("Login")),
            Text("Current Info "+DateFormat('yMMMMd').format(time),),
            ElevatedButton(onPressed: () async{
              DateTime? datetimepicker=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2001),
                  lastDate: DateTime(2026));
              print("Picked Date :${DateFormat('yMMMMd').format(datetimepicker!)}");
            }, child: Text("Pick Date")),
            ElevatedButton(onPressed: () async{
              TimeOfDay? timePicker= await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                initialEntryMode: TimePickerEntryMode.dial
              );
              print("Current Time: ${timePicker!.hour} ${timePicker.minute}");
            }, child: Text("Pick Time")
            )

            
          ],
          
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
