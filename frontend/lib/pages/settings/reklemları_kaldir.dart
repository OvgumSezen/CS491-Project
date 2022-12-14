import 'package:flutter/material.dart';

class ReklamlariKaldirPage extends StatefulWidget {
  const ReklamlariKaldirPage({Key? key}) : super(key: key);

  @override
  State<ReklamlariKaldirPage> createState() => _ReklamlariKaldirPageState();
}

class _ReklamlariKaldirPageState extends State<ReklamlariKaldirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 202, 92, 0.5764705882352941),
      body: Container(
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(
                      "Assets/arrow/arrow-white.png",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Container(
                    child: SizedBox(
                        width: 100,
                        height: 33,
                        child: Image.asset("Assets/logo/White-logo.png")),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                child: const Text(
                  """
          Premium üyeliğinizi hemen başlatıp             
          ilginizi çeken çeklişleri rahatlıkla   
          bulmanın keyfini çıkarın!                                                                                         """,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tüm çekilişlerden ilk siz haberdar olun.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    """Çekilişleri kolaylıkla sevdiklerinizle
paylaşın.""",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tüm çekilişlerden ilk siz haberdar olun.",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                "123.45₺ / aylık ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Satın Al",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(0, 84, 79, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
