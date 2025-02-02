import 'package:cavatar/ui_helper/util.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.bold,),
          labelSmall: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w200)
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Circle avatar'),
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
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
            leading: CircleAvatar(
              backgroundImage:AssetImage('assets/images/The Inmate.jpg') ,
            ),
            title: Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Person",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.indigo),),
            )),
            subtitle: Text("Blah Blah Blah!!!",style: Theme.of(context).textTheme.labelSmall,),
            trailing: Text("Time",style: tStyle1(),)
          ,
        );
      }, separatorBuilder: (context,index){
        return Divider(height: 2,);
      }, itemCount: 5)
    );
  }
}
