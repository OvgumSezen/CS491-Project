import 'package:bitirapp/bars/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../walkthrought/walk1.dart';
import '../walkthrought/walk2.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  void initState() {
    super.initState();
  }
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "About Us"),

      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
                height: 300,
                width: 400,
                child: Text(
                    "   Our developer team blah blah . The most beautiful app in the earth till we do another one :)",
                  style:TextStyle(fontWeight: FontWeight.normal,fontSize: 20) ,
                ),
            ),
          ),
        ],
      ),




    );
  }
}
