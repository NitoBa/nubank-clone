import 'package:flutter/material.dart';
import 'package:nubank/pages/home/nuhome_widget.dart';
import 'package:nubank/pages/relogio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Relogio(),
    );
  }
}



