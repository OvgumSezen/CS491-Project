import 'package:flutter/material.dart';

import '../../bars/app_bar_icon.dart';
import '../../texts/gizlilik_politikasi_text.dart';

class GizlilikPolitikasiPage extends StatefulWidget {
  const GizlilikPolitikasiPage({Key? key}) : super(key: key);

  @override
  State<GizlilikPolitikasiPage> createState() => _GizlilikPolitikasiPageState();
}

class _GizlilikPolitikasiPageState extends State<GizlilikPolitikasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Gizlilik Politikası"),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  GizlilikPolitikasiText().text1,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 184, 208),
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    print("basildi");
                  },
                  child: Text(
                    "Sözleşmeyi Kabul Et",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
