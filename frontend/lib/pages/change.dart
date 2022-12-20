import 'package:bitirapp/bars/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/session_controller/session_controller.dart';

class Change extends StatefulWidget {
  const Change({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChangeState createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  @override
  void initState() {
    super.initState();
  }
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(



      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Change"),

      body: Column(
        children: [
          Container(child:Text("change the name"),),
          Container(child: ElevatedButton(
            style:ButtonStyle(

              backgroundColor:MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () =>
              Singleton.instance.user.name = "ayşe",




            child: Icon(Icons.arrow_forward_ios,
              color: Color.fromRGBO(169, 169, 169, 1.0),
            ),
          ))
        ],
      ),



    );
  }
}
