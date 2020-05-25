import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:providerapp/Provider/count.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw Provider();
  }

}

class Provider extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProviderState();

  }

}

class ProviderState extends State<Provider>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
      ),
    );
  }

}

