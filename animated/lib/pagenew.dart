import 'package:animated/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNew extends StatefulWidget{
  @override
  State<PageNew> createState() => _PageNState();
}

class _PageNState extends State<PageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: 400,
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Hero(tag:"BackGround" ,
          child: Image.asset('asset/images/resize_image.png',),
                ),
        ),
    ));
  }
}