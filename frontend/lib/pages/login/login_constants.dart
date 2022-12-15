import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Color.fromRGBO(24, 23, 43, 1.0),
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Color.fromRGBO(24, 23, 43, 1.0),
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF26CA5C),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);