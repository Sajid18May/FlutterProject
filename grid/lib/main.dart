import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Grid Layout'),
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
      body:Wrap(
        spacing: 11,
        runSpacing: 11,
        direction: Axis.vertical,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.orangeAccent,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.red,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.teal,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.tealAccent,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.teal[300],
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.yellow,
          )
        ],
      )
    );
  }
}
