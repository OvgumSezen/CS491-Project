import 'package:bitirapp/controller/session_controller/session_controller.dart';
import 'package:bitirapp/model/user/user.dart';
import 'package:bitirapp/pages/change.dart';
import 'package:bitirapp/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/buttom_bar.dart';
import '../../bars/app_bar_icon.dart';


class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  void initState() {
    super.initState();
   // user = User("5396734333", "Gizem Bal", "gizem@gmail.com", "123456789");
  }
  //late User user ;//= User("5396734333", "Gizem Bal", "gizem@gmail.com", "123456789");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Account Settings"),
/*
      bottomNavigationBar: const MyBottomNavigationBar(
        currentIndex: 3,
      ),

 */
      body:SingleChildScrollView(
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
                  Container(
                    // component3LKK (122:803)
                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 32),
                    width:  double.infinity,
                    height:  127,
                    decoration:  BoxDecoration (
                      color:  Color(0xfff8f8fa),
                      borderRadius:  BorderRadius.circular(20),
                    ),
                    child:
                    Stack(
                      children:  [
                        Positioned(
                          // points3086e57 (I122:803;103:1046)
                          left:  128,
                          top:  80,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width:  88,
                              height:  21,
                              child:
                              Text(
                                'Points : 3086',
                                
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group113iqf (I122:803;103:1038)
                          left:  20,
                          top:  14,
                          child:
                          Container(
                            width:  208,
                            height:  97,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // rectangle1048q (I122:803;103:1041)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  width:  96,
                                  height:  97,
                                  child:
                                  ClipRRect(
                                    borderRadius:  BorderRadius.circular(14),
                                    child:


                                    Image.network(
                                      "https://www.promarinetrade.com/cache/promarine/public/shop_product_picture/_1200x800x0/4618_G.jpg",
                                      fit:  BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // gizembalAxZ (I122:803;103:1039)
                                  margin:  EdgeInsets.fromLTRB(0, 11, 0, 0),
                                  child:

                                  Text(
                                    Singleton.instance.user.name,
                                    //'Gizem Bal',
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),

                                  ),



                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // component29UiM (122:4046)
                          left:  11,
                          top:  13,
                          child:
                          Container(
                            width:  100,
                            height:  101.04,
                            decoration:  BoxDecoration (
                              borderRadius:  BorderRadius.circular(90),
                              image:  DecorationImage (
                                fit:  BoxFit.cover,
                                image:  AssetImage("Assets/me/me.JPG"),
                              ),
                            ),
                            child:
                            Stack(
                              children:  [
                                Positioned(
                                  // component22mBf (I122:4046;122:4021)
                                  left:  80,
                                  top:  77,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  20,
                                      height:  20,

                                      child:
                                      Icon(Icons.photo_camera)
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group108may (122:915)
                    margin:  EdgeInsets.fromLTRB(5, 0, 12, 24),
                    width:  double.infinity,
                    child:
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          // nameWHf (122:916)
                          margin:  EdgeInsets.fromLTRB(8, 0, 0, 12),
                          child:
                          Text(
                            'Name',

                          ),
                        ),
                        Container(
                          // group103RfX (122:917)
                          padding:  EdgeInsets.fromLTRB(24, 16, 24, 16),
                          width:  double.infinity,
                          decoration:  BoxDecoration (
                            color:  Color(0xfff8f8fa),
                            borderRadius:  BorderRadius.circular(18),
                          ),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                margin:  EdgeInsets.fromLTRB(0, 0, 189, 0),
                                child:Text(Singleton.instance.user.name),
                               /*
                                Text(
                                  'Gizem Bal',

                                ),
                                */

                              ),
                              Container(
                                //margin:  EdgeInsets.fromLTRB(0, 4, 0, 0),
                                width:  35,
                                height:  35,
                                child:ElevatedButton(
                                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C))),
                                      child: Icon(Icons.edit,color: Colors.black,size: 20,),
                                  onPressed: () => Singleton.instance.user.name = "Changed",
                                )

                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.fromLTRB(9, 0, 8, 24),
                    width:  double.infinity,
                    child:
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          margin:  EdgeInsets.fromLTRB(8, 0, 0, 12),
                          child:
                          Text(
                            'Email',

                          ),
                        ),
                        Container(
                          padding:  EdgeInsets.fromLTRB(24, 16, 24, 16),
                          width:  double.infinity,
                          decoration:  BoxDecoration (
                            color:  Color(0xfff8f8fa),
                            borderRadius:  BorderRadius.circular(18),
                          ),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                margin:  EdgeInsets.fromLTRB(0, 0, 132, 0),
                                child:
                                Text(
                                  Singleton.instance.user.email,

                                ),
                              ),
                              Container(
                                margin:  EdgeInsets.fromLTRB(0, 4, 0, 0),
                                width:  35,
                                height:  35,
                                child:
                                ElevatedButton(
                                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C))),
                                  child: Icon(Icons.edit,color: Colors.black,size: 20,),
                                  onPressed: () => Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => HomePage())),
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.fromLTRB(9, 0, 8, 24),
                    width:  double.infinity,
                    child:
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          margin:  EdgeInsets.fromLTRB(8, 0, 0, 12),
                          child:
                          Text(
                            'Password',

                          ),
                        ),
                        Container(
                          padding:  EdgeInsets.fromLTRB(24, 20, 26, 20),
                          width:  double.infinity,
                          height:  69,
                          decoration:  BoxDecoration (
                            color:  Color(0xfff8f8fa),
                            borderRadius:  BorderRadius.circular(18),
                          ),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                margin:  EdgeInsets.fromLTRB(0, 0, 170, 0),
                                height:  double.infinity,
                                child:Text(Singleton.instance.user.password),
                                    /*
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:  CrossAxisAlignment.center,
                                  children:  [
                                    Container(
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container(
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container(
                                      // ellipse1mwf (122:927)
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container(
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container(
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container(
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                    SizedBox(
                                      width:  12,
                                    ),
                                    Container( // ellipse1Y5F (122:931)
                                      width:  8,
                                      height:  8,
                                      decoration:  BoxDecoration (
                                        borderRadius:  BorderRadius.circular(4),
                                        color:  Color(0xff18172b),
                                      ),
                                    ),
                                  ],
                                ),*/
                              ),

                                Container(
                                  width:  20,
                                  height:  20,
                                  child:
                                  Icon(Icons.remove_red_eye,size: 20,)
                                ),



                                Container(
                                    width:  35,
                                    height:  35,
                                    child:
                                    ElevatedButton(
                                      style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C))),
                                      child: Icon(Icons.edit,color: Colors.black,size: 20,),
                                      onPressed: () => Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage())),
                                    )
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group108PrZ (168:3852)
                    margin:  EdgeInsets.fromLTRB(5, 0, 12, 0),
                    width:  double.infinity,
                    child:
                    Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children:  [
                        Container(
                          margin:  EdgeInsets.fromLTRB(8, 0, 0, 12),
                          child:
                          Text(
                            'Phone Number',

                          ),
                        ),
                        Container(
                          // group105TLd (168:3854)
                          padding:  EdgeInsets.fromLTRB(17, 16, 26, 16),
                          width:  double.infinity,
                          decoration:  BoxDecoration (
                            color:  Color(0xfff8f8fa),
                            borderRadius:  BorderRadius.circular(18),
                          ),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                              Container(
                                width:  30.5,
                                height:  22,
                                child:Image.asset( "Assets/me/flag.png"),

                              ),
                              Container(
                                // UWd (168:3857)
                                margin:  EdgeInsets.fromLTRB(0, 0, 160, 0),
                                child:
                                Text(
                                    Singleton.instance.user.phoneNum
                                ),
                              ),

                                Container(
                                  width:  35,
                                  height:  35,
                                  child:
                                  ElevatedButton(
                                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C))),
                                    child: Icon(Icons.edit,color: Colors.black,size: 20,),
                                    onPressed: () => Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => HomePage())),
                                  )
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
    ),);
  }
}
