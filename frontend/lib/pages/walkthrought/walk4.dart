import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';

import '../home/home.dart';


class Walk4 extends StatefulWidget {
  const Walk4({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Walk4State createState() => _Walk4State();
}

class _Walk4State extends State<Walk4> {
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
              //child:Image(image: AssetImage("Assets/walk/Walk4.JPG"), ),


              child: new Image.asset("Assets/walk/walk4.JPG"),




            ),
          ),

        ],

      ),
    );
  }
}
