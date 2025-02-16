import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.white10,
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.tealAccent,
                  ),
                )
              ],
            ),
          ),
          Icon(FontAwesomeIcons.twitter),
          RichText(
            text:TextSpan(
              style: TextStyle(
                color: Colors.black45,
                fontSize: 45
              ),
              children :<TextSpan> [
                TextSpan(text: "Hello",
                    style: TextStyle(
                        fontSize:33,
                        color: Colors.indigo[200],
                        fontStyle:FontStyle.italic)),
                TextSpan(text: "World",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      color: Colors.indigo
                    )),
                TextSpan(
                  text: "new"
                )
              ]
            ) ,

          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
