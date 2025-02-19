import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pagenew.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  var _height=300.0;
  var _width=200.0;
  var opa=1.0;
  var isFirst=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: _height,
                  width: _width,
                  curve: Curves.easeInCirc,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo,
                  ) ,
                  duration: Duration(seconds: 1),
              ),
              ElevatedButton(onPressed: (){
                _height=_height!=200?200:300;
                _width=_width!=300?300:200;
                setState(() {
          
                });
              }, child: Text("Animate")),
              AnimatedOpacity(
                  opacity: opa,
                  duration: Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                    ),
          
                    height: 100,
                    width: 200,
                  ))
              ,ElevatedButton(onPressed: (){
                opa=opa!=1?1:0;
                setState(() {
          
                });
              }, child: Text("Hide")),
          
              AnimatedCrossFade(
                // firstCurve: Curves.bounceIn,
                //   secondCurve: Curves.bounceOut,
                  firstChild: Container(
                    color: Colors.green,
                    height: 300,
                    width: 300,
                  ),
                  secondChild: Image.asset('asset/images/resize_image.png',
                    // width: 300,
                    // height: 300,
          
                  ),
                  crossFadeState:
                  isFirst?CrossFadeState.showFirst:CrossFadeState.showSecond,
                  duration: Duration(
                seconds: 2
              )),
              ElevatedButton(onPressed: (){
                setState(() {
                  isFirst=isFirst==false?true:false;
                });
              }, child: Text("Fade")
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context) => PageNew(),)
                  );
                },
                child: Hero(tag:"BackGround" ,
                  child: Image.asset('asset/images/resize_image.png',height: 100,)
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
