import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/pages/relogio_controller.dart';

class Relogio extends StatefulWidget {
  @override
  _RelogioState createState() => _RelogioState();
}

class _RelogioState extends State<Relogio> {
  final clockcontroller = RelogioController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Relógio"),
      ),
      body: 
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                
                
                Observer(builder: (_) {
                   return Text("${clockcontroller.segundos}");
                },
                ),
              ],
            ),
            SizedBox(height: 50,),
            FlatButton(
              child: Text("Iniciar"),
              onPressed: (){
                clockcontroller.changeHours();
                Timer(Duration(seconds: 1), clockcontroller.changeHours());
              }
              
            )
          ],
        
      ),
    );
  }
}