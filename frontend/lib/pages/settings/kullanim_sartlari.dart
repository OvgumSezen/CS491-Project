import 'package:flutter/material.dart';
import 'package:bitirapp/texts/kullanim_kosullari_text.dart';

import '../../bars/app_bar_icon.dart';

class KullanimSartlariPage extends StatefulWidget {
  const KullanimSartlariPage({Key? key}) : super(key: key);

  @override
  State<KullanimSartlariPage> createState() => _KullanimSartlariPageState();
}

class _KullanimSartlariPageState extends State<KullanimSartlariPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidgetIcon(Size.fromHeight(60.0), "Kullanım Şartları"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                KullanimKosullariText().text1,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 184, 208),
                  onPrimary: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  "Sözleşmeyi Kabul Et",
                ))
          ],
        ),
      ),
    );
  }
}
