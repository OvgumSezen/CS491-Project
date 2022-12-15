import 'package:flutter/material.dart';

class BuildLanguageSelection extends StatefulWidget {
  //BuildDarkMode(this.title);0
  const BuildLanguageSelection({super.key});
  //var title;
  @override
  _BuildLanguageSelectionState createState() => _BuildLanguageSelectionState();
}

class _BuildLanguageSelectionState extends State<BuildLanguageSelection> {
  String gosterilenDil = "Turkish";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: (){
      //Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
      //},
      child:

            Container(
              width: 150,
              height: 40,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(
                      38, 202, 92, 1.0), //background color of dropdown button
                  border:
                      Border.all(color: Color.fromRGBO(38, 202, 92, 1.0), width: 3),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(
                      menuMaxHeight: 180,
                      dropdownColor: Color.fromRGBO(38, 202, 92, 1.0),
                      borderRadius: BorderRadius.circular(6),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      value: gosterilenDil,
                      items: const [
                        DropdownMenuItem(
                          value: "Turkish",
                          child: Text("Turkish"),
                        ),
                        DropdownMenuItem(
                          value: "English",
                          child: Text("English"),
                        ),
                        DropdownMenuItem(
                          value: "Spanish",
                          child: Text("Spanish"),
                        ),
                        DropdownMenuItem(
                          value: "French",
                          child: Text("French"),
                        ),
                        DropdownMenuItem(
                          value: "Russian",
                          child: Text("Russian"),
                        ),
                        DropdownMenuItem(
                          value: "German",
                          child: Text("German"),
                        ),
                      ],
                      icon: const Padding(
                          //Icon at tail, arrow bottom is default icon
                          padding: EdgeInsets.only(left: 35),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          )),
                      underline: Container(), //ÇİZGİYİ SİLİYOR
                      onChanged: (value) {
                        setState(() {
                          gosterilenDil = value.toString();
                        });
                      }),
                ),
        ),
      ),
    );
  }
}
