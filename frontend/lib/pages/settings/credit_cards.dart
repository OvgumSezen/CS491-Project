import 'package:bitirapp/bars/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';


class CreditCards extends StatefulWidget {
  const CreditCards({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreditCardsState createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "CreditCards"),


      body:
      SingleChildScrollView(
        child:
        Container(
          // zos (122:777)
          width:  double.infinity,
          decoration:  BoxDecoration (
            gradient:  LinearGradient (
              begin:  Alignment(0, -1),
              end:  Alignment(0, 1),
              colors:  <Color>[Colors.white, Colors.white],
              stops:  <double>[0.646, 1],
            ),
          ),
          child:
          Column(
            crossAxisAlignment:  CrossAxisAlignment.center,
            children:  [

              Container(
                // autogroup64gh1nq (Ahg5qJHSHTGXxeb86P64Gh)
                padding:  EdgeInsets.fromLTRB(17, 3, 14, 102),
                width:  double.infinity,
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [




//*****************************************************************


                    Container(
                      // component15nBT (I163:3013;117:919)
                      padding:  EdgeInsets.fromLTRB(15, 14, 28, 9),
                      width:  double.infinity,
                      height:  71,
                      decoration:  BoxDecoration (
                        color:  Color(0xfff8f8fa),
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Container(
                            // autolayouthorizontaltEV (I163:3013;117:919;114:749)
                            margin:  EdgeInsets.fromLTRB(0, 0, 7.33, 5.33),
                            width:  34.67,
                            height:  42.67,
                            child:
                            Icon(Icons.credit_card_rounded),
                          ),
                          Container(
                            // autolayoutverticalz2d (I163:3013;117:919;114:725)
                            margin:  EdgeInsets.fromLTRB(0, 0, 192, 0),
                            height:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(

                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child:
                                  Text(
                                    'Main',

                                  ),
                                ),
                                Text(
                                  // timessquarenycmanhattan271yK (I163:3013;117:919;114:730)
                                  '00** **00',

                                ),
                              ],
                            ),
                          ),
                          Container(
                              width:  40,
                              height:  40,
                              child:ElevatedButton(
                                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),

                                ),
                                onPressed: () { print("button clicked"); },
                                child: Icon(Icons.check_circle_outline),

                              )
                            //Icon(Icons.check_circle_rounded,color: Colors.black),
                          ),
                        ],
                      ),
                    ),

//*********************************************************

                    SizedBox(
                      height:  23,
                    ),
                    Container(
                      // component15nBT (I163:3013;117:919)
                      padding:  EdgeInsets.fromLTRB(15, 14, 28, 9),
                      width:  double.infinity,
                      height:  71,
                      decoration:  BoxDecoration (
                        color:  Color(0xfff8f8fa),
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Container(
                            // autolayouthorizontaltEV (I163:3013;117:919;114:749)
                            margin:  EdgeInsets.fromLTRB(0, 0, 7.33, 5.33),
                            width:  34.67,
                            height:  42.67,
                            child:
                            Icon(Icons.credit_card_rounded),
                          ),
                          Container(
                            // autolayoutverticalz2d (I163:3013;117:919;114:725)
                            margin:  EdgeInsets.fromLTRB(0, 0, 192, 0),
                            height:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(

                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child:
                                  Text(
                                    'Back Up',

                                  ),
                                ),
                                Text(
                                  // timessquarenycmanhattan271yK (I163:3013;117:919;114:730)
                                  '11** **11 ',

                                ),
                              ],
                            ),
                          ),
                          Container(
                              width:  40,
                              height:  40,
                              child:ElevatedButton(
                                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),

                                ),
                                onPressed: () { print("button clicked"); },
                                child: Icon(Icons.check_circle_outline),

                              )
                            //Icon(Icons.check_circle_rounded,color: Colors.black),
                          ),
                        ],
                      ),
                    ),

//**************************************************

                    SizedBox(
                      height:  23,
                    ),
                    Container(
                      // component7BRs (I178:4923;178:4905;117:943)
                      padding:  EdgeInsets.fromLTRB(15, 14, 28, 14.33),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        color:  Color(0xfff8f8fa),
                        borderRadius:  BorderRadius.circular(20),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroupbvhbUQy (AhfwfT4etsHyXwtX9vBVhb)
                            margin:  EdgeInsets.fromLTRB(0, 0, 7.33, 0),
                            width:  34.67,
                            height:  42.67,
                            child:
                            Icon(Icons.add,),
                          ),
                          Container(
                            // autogroupm4euMUm (Ahfwj7dDP4N1e7Usmrm4Eu)
                            margin:  EdgeInsets.fromLTRB(0, 0, 203, 4.67),
                            width:  37,
                            height:  38,
                            child:
                            Stack(
                              children:  [

                                Positioned(
                                  // locationNem (I178:4923;178:4906)
                                  left:  2,
                                  top:  10,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  35,
                                      height:  22,
                                      child:
                                      Text(
                                        'Add',

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),











                  ],
                ),
              ),
            ],
          ),
        ),







      ),













    );
  }
}
