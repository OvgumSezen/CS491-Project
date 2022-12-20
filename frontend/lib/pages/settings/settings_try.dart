import 'package:bitirapp/pages/login/login_screen.dart';
import 'package:bitirapp/pages/search/try_page.dart';
import 'package:bitirapp/pages/settings/about_us.dart';
import 'package:bitirapp/pages/settings/account_settings.dart';
import 'package:bitirapp/pages/settings/addresses.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';

import '../../bars/selection_bars/language_selection.dart';

class  SettingsTry extends StatefulWidget {
  const SettingsTry({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsTryState createState() => _SettingsTryState();
}

class _SettingsTryState extends State< SettingsTry> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidget2(Size.fromHeight(60.0), "Settings"),

      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 3,
      ),
      body:SingleChildScrollView(
        child:


      Container(
        // ETB (122:934)
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
              // autogroupt4wurRw (Ahg86Zr3WerP3JMK1uT4Wu)
              padding:  EdgeInsets.fromLTRB(10 , 16 , 13 , 15 ),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                  Container(
                    // component39Z5T (I163:2407;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 17 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettings1CM (I163:2407;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 170 , 0 ),
                         child: Text(
                           //'a',
                           'Account Settings',

                         ),
                        ),
                        Container(

                          child: SizedBox(width:40 ,height: 40,
                            child: ElevatedButton(
                                style:ButtonStyle(

                                  backgroundColor:MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AccountSettings())),
                              child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)





                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component25gxh (I163:2428;163:2384)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 16 ),
                    padding:  EdgeInsets.fromLTRB(33 , 17 , 15 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettings9bP (I163:2428;163:2384;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 3 , 209 , 0 ),
                          child:
                          Text(
                            'DarkMode',

                          ),
                        ),
                        Container(
                          // autogroupdx372QH (Ahg8eoRLLEwZf5B5HUdX37)
                          width:  40 ,
                          height:  40 ,

                          child:
                          Icon(Icons.dark_mode_outlined,color: Color(0xff6e80b0),),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    // component39aq7 (I163:2414;163:1773)
                    margin:  EdgeInsets.fromLTRB(0 , 0 , 2 , 16 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingsS6d (I163:2414;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 220 , 0 ),
                          child:
                          Text(
                            'Addresses',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Addresses())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)





                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component39EoB (I163:2421;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 18 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingsXGV (I163:2421;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 198 , 0 ),
                          child:
                          Text(
                            'Promo Codes',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryPage())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component39sDs (I163:2377;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 16 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingsuAZ (I163:2377;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 184 , 0 ),
                          child:
                          Text(
                            'Delivery Option',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryPage())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)





                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component39hMK (I163:2358;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 9 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingsyJq (I163:2358;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 212 , 0 ),
                          child:
                          Text(
                            'Last Orders',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryPage())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component39jhK (I185:4973;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 9 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingszdF (I185:4973;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 205 , 0 ),
                          child:
                          Text(
                            'Credit Cards',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryPage())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)
                        ),
                      ],
                    ),
                  ),


                  Container(
                    // component39hMK (I163:2358;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 9 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingsyJq (I163:2358;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 212 , 0 ),
                          child:
                          Text(
                            'Language',

                          ),
                        ),
                        /*
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => TryPage())),
                                  child: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(169, 169, 169, 1.0),)),)
                        ),
                        */
                        BuildLanguageSelection(),
                      ],
                    ),
                  ),


                  Container(
                    // component39jhK (I185:4973;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 9 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children:  [
                        Container(
                          // accountsettingszdF (I185:4973;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 205 , 0 ),
                          child:
                          Text(
                            'About Us',

                          ),
                        ),
                        Container(

                            child: SizedBox(width:40 ,height: 40,
                              child: ElevatedButton(
                                  style:ButtonStyle(

                                    backgroundColor:MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => AboutUs())),
                                  child: Icon(Icons.arrow_forward_ios,
                                      color: Color.fromRGBO(169, 169, 169, 1.0),
                                  ),
                              )
                              ,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // component39jhK (I185:4973;163:1773)
                    margin:  EdgeInsets.fromLTRB(2 , 0 , 0 , 9 ),
                    padding:  EdgeInsets.fromLTRB(33 , 20 , 23 , 17 ),
                    width:  double.infinity,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(10 ),
                    ),
                    child:
                    Row(
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          // accountsettingszdF (I185:4973;163:1773;122:1125)
                          //margin:  EdgeInsets.fromLTRB(0 , 0 , 205 , 0 ),
                          child:
                          Text(
                            'Logout',

                          ),
                        ),
                        Container(child: SizedBox(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                          style:ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginScreen())),
      child: Icon(Icons.exit_to_app,
        color: Color.fromRGBO(169, 169, 169, 1.0),
      ),
    ),
                        ),)

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
