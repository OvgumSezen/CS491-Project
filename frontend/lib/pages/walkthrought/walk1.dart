import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';

import '../home/home.dart';


class Walk1 extends StatefulWidget {
  const Walk1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Walk1State createState() => _Walk1State();
}

class _Walk1State extends State<Walk1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Container(
        child: SizedBox(
          height: 400,
          width: 400,
          //child:Image(image: AssetImage("Assets/walk/walk1.JPG"), ),
          child: new Image.asset("Assets/walk/walk1.JPG"),
      ),
        ),
        Container(child:Text("Welcome to Bitir",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),),
      ],
      ),
    );
  }
}
