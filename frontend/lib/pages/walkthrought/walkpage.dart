import 'package:bitirapp/pages/home/home.dart';
import 'package:bitirapp/pages/walkthrought/walk3.dart';
import 'package:bitirapp/pages/walkthrought/walk4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:bitirapp/pages/login/login_screen.dart';
import '../walkthrought/walk1.dart';
import '../walkthrought/walk2.dart';

class Walk extends StatefulWidget {
  const Walk({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WalkState createState() => _WalkState();
}

class _WalkState extends State<Walk> {
  @override
  void initState() {
    super.initState();
  }
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

      body:
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          SizedBox(height: 600,width: 500,
          child: PageView(
            controller: _controller,
            children: [Walk1(),Walk2(),Walk3(),Walk4(),
              //Walk3(),Walk4(),
            ],

          ),
        ),
          SmoothPageIndicator(controller:_controller,count:4,effect: const SlideEffect(
            activeDotColor:  Color(0xff26ca5c),
            dotHeight: 10,
            dotColor:  Color(0xff9d9d9d),
            dotWidth: 10,
          ),),

          SizedBox(
            height: 50,
            width: 300,
            child: Container(
                child:ElevatedButton(
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF26CA5C)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                          )
                      )
                  ),
                  child: Text("S t a r t",style: TextStyle(

                    fontSize: 20,fontWeight: FontWeight.w400,
                  ),),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen())),
                )

            ),
          ),
        ],
      ),
      //Text("body"),
    );
  }
}
