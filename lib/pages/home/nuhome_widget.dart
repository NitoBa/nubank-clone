import 'package:flutter/material.dart';
import 'package:nubank/pages/home/initial_widget.dart';
import 'package:nubank/pages/nuconta/nuconta_widget.dart';

class NubankHome extends StatefulWidget {
  @override
  _NubankHomeState createState() => _NubankHomeState();
}

class _NubankHomeState extends State<NubankHome> {
  

  int currentindex = 0;

  Widget buildPage({int index = 0, String source}){
    return FlatButton(
      onPressed: (){
      setState(() {
        currentindex = index;
      });
    }, child: Text(source, 
              style: TextStyle(color: currentindex == index ? Colors.purple : Colors.grey,
              fontSize: currentindex == index ? 18 : 15),
    ),);
  }
  final itemPage = <Widget> [
    InitialHome(),
    Center(child: Text('início')),
    NuContaWidget(), 
    Center(child: Text('início')),
  ];
  @override
  Widget build(BuildContext context) {

    final bottonBar = BottomAppBar(
        elevation: 10,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildPage(source: 'Inicio',index: 0,),
                buildPage(source: 'Cartão', index: 1,),
                buildPage(source: 'NuConta', index: 2,),
                buildPage(source: 'Usuário',index: 3,),
              ],
            ),
          );
    return Scaffold(
      bottomNavigationBar: bottonBar,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 400),
        child: itemPage[currentindex],
        
      )
    );
  }
}