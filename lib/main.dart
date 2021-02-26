import 'package:flutter/material.dart';
import './others/EasyJsonParse/JsonParseDemo.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonParseDemo(),
    );
  }
}
