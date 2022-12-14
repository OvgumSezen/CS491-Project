import 'package:flutter/material.dart';
import 'package:bitirapp/pages/settings/gizlilik_politikasi.dart';
import 'package:bitirapp/pages/settings/reklemlar%C4%B1_kaldir.dart';
import 'package:bitirapp/pages/settings/kullanim_sartlari.dart';


Widget buildCategory(context, String title, var iconIsmi, var gidilecekSayfa,
    var iconOncesiBosluk) {
  return GestureDetector(
    //ReklamlariKaldirPage

    child: Container(
      width: 300,
      height: 45,
      child: Row(
        children: [
          Container(width: 20, height: 20, child: Image.asset(iconIsmi)),
          const SizedBox(
            width: 10,
          ),
          TextButton(
              onPressed: () {
                if (gidilecekSayfa == "KullanimSartlariPage") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KullanimSartlariPage()));
                } else if (gidilecekSayfa == "ReklamlariKaldirPage") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReklamlariKaldirPage()));
                } else if (gidilecekSayfa == "GizlilikPolitikasiPage") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GizlilikPolitikasiPage()));
                } else if (gidilecekSayfa == "bos") {
                  print("sayfa boş seçildi");
                } else {
                  print("hata sayfa seçilmedi");
                }
              },
              child: Text(
                title,
                style:
                    TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
              )),
          SizedBox(
            width: iconOncesiBosluk,
          ),
          Container(
            child: IconButton(
                onPressed: () {
                  if (gidilecekSayfa == "KullanimSartlariPage") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KullanimSartlariPage()));
                  } else if (gidilecekSayfa == "ReklamlariKaldirPage") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReklamlariKaldirPage()));
                  } else if (gidilecekSayfa == "GizlilikPolitikasiPage") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GizlilikPolitikasiPage()));
                  } else if (gidilecekSayfa == "bos") {
                    print("sayfa boş seçildi");
                  } else {
                    print("hata sayfa seçilmedi");
                  }
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                )),
          ),

          /*
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),

           */
        ],
      ),
    ),
  );
}
