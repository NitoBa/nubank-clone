import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/pages/treino/home-controller.dart';
import 'package:nubank/src/service-controller.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}


final homecontroller = HomeController();
final servicecontroller = ServiceController();


class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobx"),
      ),
      body: Center(
        child: Observer(builder: (_) {
          return Column(
            children: <Widget>[
              Text('${servicecontroller.userId}',
              style: TextStyle(fontSize: 40),
            ),
            Text('${servicecontroller.id}',
              style: TextStyle(fontSize: 40),
            ),
            Text('${servicecontroller.title}',
              style: TextStyle(fontSize: 40),
            ),
            Text('${servicecontroller.completed}',
              style: TextStyle(fontSize: 40),
            ),
            ],
          );
        },
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: servicecontroller.chamadaRequisicao,
      ),
    );
  }
}