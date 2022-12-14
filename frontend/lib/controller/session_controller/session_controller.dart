import 'package:bitirapp/model/user/user.dart';

class Singleton {
  static final Singleton instance = Singleton._internal();

  factory Singleton() {
    return instance;
  }

  Singleton._internal();

  User user = User("5396734333", "Gizem Bal", "gizem@gmail.com", "123456789");
}