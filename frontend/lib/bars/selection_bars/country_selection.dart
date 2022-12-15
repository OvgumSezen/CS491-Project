import 'package:flutter/material.dart';

class BuildCountrySelection extends StatefulWidget {
  //BuildDarkMode(this.title);0
  const BuildCountrySelection({super.key});
  //var title;
  @override
  _BuildCountrySelectionState createState() => _BuildCountrySelectionState();
}

class _BuildCountrySelectionState extends State<BuildCountrySelection> {
  String gosterilenDil = "TR";
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
      child: Container(
        width: 300,
        height: 45,
        child: Row(
          children: [
            Container(
                width: 20,
                height: 20,
                child: Image.asset("Assets/konum/location (1).png")),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Country",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 120,
            ),
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
                      menuMaxHeight: 140,
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
                          value: "TR",
                          child: Text("Turkey"),
                        ),
                        DropdownMenuItem(
                          value: "FRA",
                          child: Text("France"),
                        ),
                        DropdownMenuItem(
                          value: "GRC",
                          child: Text("Greece"),
                        ),
                      ],
                      icon: Container(
                        height: 20,
                        width: 20,
                        child: const Padding(
                            padding: EdgeInsets.only(left: 43),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )),
                      ),
                      underline: Container(), //ÇİZGİYİ SİLİYOR
                      onChanged: (value) {
                        setState(() {
                          gosterilenDil = value.toString();
                        });
                      }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
