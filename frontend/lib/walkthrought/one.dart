import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';


class One extends StatefulWidget {
  const One({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Home"),

      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 0,
      ),




      body: Container(
        // we1 (103:271)
        width:  double.infinity,
        height:  812 ,
        decoration:  BoxDecoration (
          color:  Color(0xffffffff),
        ),
        child:
        Stack(
          children:  [
            Positioned(
              // welcometobitirSqf (103:272)
              left:  105 ,
              top:  451 ,
              child:
              Align(
                child:
                SizedBox(
                  width:  167 ,
                  height:  30 ,
                  child:
                  Text(
                    'Welcome to Bitir',
                    textAlign:  TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              // statusbarWKj (103:278)
              left:  34.5 ,
              top:  14 ,
              child:
              Container(
                width:  326.16 ,
                height:  19 ,
                child:
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // timeQAD (103:293)
                      margin:  EdgeInsets.fromLTRB(0 , 0 , 232.5 , 0 ),
                      child:
                      Text(
                        '9:41',
                        textAlign:  TextAlign.center,

                      ),
                    ),
                    Container(
                      // cellularconnection7KX (103:287)
                      margin:  EdgeInsets.fromLTRB(0 , 0 , 5 , 1 ),
                      width:  17 ,
                      height:  10.67 ,

                    ),
                    Container(
                      // wifiaiu (103:283)
                      margin:  EdgeInsets.fromLTRB(0 , 0 , 5 , 1.34 ),
                      width:  15.33 ,
                      height:  11 ,


                    ),
                    Container(
                      // batterytzV (103:279)
                      margin:  EdgeInsets.fromLTRB(0 , 0 , 0 , 1 ),
                      width:  24.33 ,
                      height:  11.33 ,

                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // plant22L1 (194:5646)
              left:  77 ,
              top:  181 ,
              child:
              Align(
                child:
                SizedBox(
                  width:  222 ,
                  height:  204 ,

                ),
              ),
            ),
            Positioned(
              // plusLLh (194:5653)
              left:  169 ,
              top:  332 ,
              child:
              Container(
                padding:  EdgeInsets.fromLTRB(19 , 13.13 , 19 , 13.13 ),
                width:  38 ,
                height:  63 ,
                decoration:  BoxDecoration (

                ),
              ),
            ),
            Positioned(
              // autogrouppwdxmS1 (AhfnEUH4MPA4AmETfipWdX)
              left:  146 ,
              top:  643 ,
              child:
              Container(
                width:  82 ,
                height:  10 ,
                child:
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // frame97uHK (194:5657)
                      width:  10 ,
                      height:  10 ,

                    ),
                    SizedBox(
                      width:  14 ,
                    ),
                    Container(
                      // ellipse2EaV (194:5659)
                      width:  10 ,
                      height:  10 ,
                      decoration:  BoxDecoration (
                        borderRadius:  BorderRadius.circular(5 ),
                        color:  Color(0x336e80b0),
                      ),
                    ),
                    SizedBox(
                      width:  14 ,
                    ),
                    Container(
                      // ellipse39SZ (194:5660)
                      width:  10 ,
                      height:  10 ,
                      decoration:  BoxDecoration (
                        borderRadius:  BorderRadius.circular(5 ),
                        color:  Color(0x336e80b0),
                      ),
                    ),
                    SizedBox(
                      width:  14 ,
                    ),
                    Container(
                      // ellipse1fA1 (194:5661)
                      width:  10 ,
                      height:  10 ,
                      decoration:  BoxDecoration (
                        borderRadius:  BorderRadius.circular(5 ),
                        color:  Color(0x336e80b0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group99cb3 (90:841)
              left:  23 ,
              top:  697 ,
              child:
              TextButton(
                onPressed:  () {},
                style:  TextButton.styleFrom (
                  padding:  EdgeInsets.zero,
                ),
                child:
                Container(
                  width:  327 ,
                  height:  64 ,
                  decoration:  BoxDecoration (
                    color:  Color(0xff26c95c),
                    borderRadius:  BorderRadius.circular(20 ),
                  ),
                  child:
                  Center(
                    child:
                    Text(
                      'Get Started',
                      textAlign:  TextAlign.center,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),









    );
  }
}
