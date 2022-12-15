import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';

import '../home/home.dart';


class Walk2 extends StatefulWidget {
  const Walk2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Walk2State createState() => _Walk2State();
}

class _Walk2State extends State<Walk2> {
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
              //child:Image(image: AssetImage("Assets/walk/Walk2.JPG"), ),


              child: new Image.asset("Assets/walk/walk2.PNG"),




            ),
          ),

        ],

      ),
    );
  }
}
