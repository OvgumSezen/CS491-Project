import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';

import '../home/home.dart';


class Walk3 extends StatefulWidget {
  const Walk3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Walk3State createState() => _Walk3State();
}

class _Walk3State extends State<Walk3> {
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
              //child:Image(image: AssetImage("Assets/walk/Walk3.JPG"), ),


              child: new Image.asset("Assets/walk/walk3.PNG"),




            ),
          ),

        ],

      ),
    );
  }
}
