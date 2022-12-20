import 'package:bitirapp/bars/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:bitirapp/bars/app_bar.dart';
import 'package:bitirapp/bars/buttom_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/session_controller/session_controller.dart';

class ConstructionZone extends StatefulWidget {
  const ConstructionZone({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConstructionZoneState createState() => _ConstructionZoneState();
}

class _ConstructionZoneState extends State<ConstructionZone> {
  @override
  void initState() {
    super.initState();
  }
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(



      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "ConstructionZone"),

      body: Column(
        children: [
          Container(child:Text("ConstructionZone"),),

        ],
      ),



    );
  }
}
