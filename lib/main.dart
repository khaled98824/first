import 'package:flutter/material.dart';
import 'package:com/pages/frontPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'athkari',
        debugShowCheckedModeBanner: false,

        home: frontpage()
    );
  }
}