import 'package:bitirapp/bars/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';

import 'package:bitirapp/bars/buttom_bar.dart';


class Addresses extends StatefulWidget {
  const Addresses({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddressesState createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Addresses"),


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
                        children:  [
                          Container(
                            // autolayouthorizontaltEV (I163:3013;117:919;114:749)
                            margin:  EdgeInsets.fromLTRB(0, 0, 7.33, 5.33),
                            width:  34.67,
                            height:  42.67,
                            child:
                            Icon(Icons.location_on_outlined),
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
                                    'Home',

                                  ),
                                ),
                                Text(
                                  // timessquarenycmanhattan271yK (I163:3013;117:919;114:730)
                                  'Ankara',

                                ),
                              ],
                            ),
                          ),
                          Container(
                            // stylenonethemedefaultstatesele (I163:3013;117:919;114:774)
                            margin:  EdgeInsets.fromLTRB(0, 2, 0, 0),
                            width:  20,
                            height:  20,
                            child:
                            Icon(Icons.check_circle_rounded,color: Colors.black),
                          ),
                        ],
                      ),
                    ),








                    SizedBox(
                      height:  23,
                    ),
                    Container(
                      // component7ciD (I117:955;117:943)
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
                        children:  [
                          Container(
                            // autolayouthorizontaliWM (I117:955;117:943;114:749)
                            margin:  EdgeInsets.fromLTRB(0, 0, 7.33, 5.33),
                            width:  34.67,
                            height:  42.67,
                            child:
                            Icon(Icons.location_on_outlined),
                          ),
                          Container(
                            // autolayoutverticalDxu (I117:955;117:943;114:725)
                            margin:  EdgeInsets.fromLTRB(0, 0, 148, 0),
                            height:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // locationySH (I117:955;117:943;114:727)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child:
                                  Text(
                                    'Work',

                                  ),
                                ),
                                Text(
                                  // timessquarenycmanhattan27YNu (I117:955;117:943;114:730)
                                  'Bilkent Ankara',

                                ),
                              ],
                            ),
                          ),
                          Container(
                            // stylenonethemedefaultstatesele (I117:955;117:943;114:774)
                            margin:  EdgeInsets.fromLTRB(0, 2, 0, 0),
                            width:  20,
                            height:  20,
                            child:
                            Icon(Icons.check_circle_outline,color: Colors.black),
                          ),
                        ],
                      ),
                    ),







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
