import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/components/cards_widget.dart';


class NuContaWidget extends StatefulWidget {
  @override
  _NuContaWidgetState createState() => _NuContaWidgetState();
}

class _NuContaWidgetState extends State<NuContaWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 300, width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                ),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Column(
                      children: <Widget>[
                        Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                          Container(
                          height: 80, width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/nubank-logo.png'),
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('Bruno', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                        fontSize: 25, letterSpacing: 1.5),),
                          ],
                        ),
                      ),
                    SizedBox(height: 25,),
                      Text("R\$ 5.000,00", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                      fontSize: 45, letterSpacing: 4),),
                    SizedBox(height: 6,),
                      Text("Rendeu R\$ 12,50", style: TextStyle(color: Colors.greenAccent,
                      fontSize: 14, letterSpacing: 1),),  
                      ],
                    ),
              )
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 80,),
                      Text("Últimas transações", style: TextStyle(color: Colors.grey,
                      fontSize: 24, letterSpacing: 1),),  
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    height: 3, width: 120,
                    color: Colors.purple,
                  ),
                
              buildTransitions(store: "Apple Store", price: "400", dia: "Quarta-feira"),
              SizedBox(width: 15,),
              buildTransitions(store: "Anna Carolinne", price: "1000", dia: "Quarta-feira", recive: true),
              SizedBox(width: 15,),
              buildTransitions(store: "Mercado Pago", price: "100", dia: "Terça-feira"),
              SizedBox(width: 15,),
              buildTransitions(store: "Amazon Store", price: "400", dia: "Sexta-feira"),
              SizedBox(width: 15,),
              buildTransitions(store: "Adriano", price: "258", dia: "Segunda-feira", recive: true),
              
                ],
              )
              ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250),
                height: 130,
                child: ListView(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    buildCards(title: "Cobrar",icon: FontAwesomeIcons.handHolding),
                    SizedBox(width: 18,),
                    buildCards(title: "Pagamento",icon: FontAwesomeIcons.moneyBillWave),
                    SizedBox(width: 18,),
                    buildCards(title: "Transferir",icon: FontAwesomeIcons.exchangeAlt),
                    SizedBox(width: 18,),
                    buildCards(title: "Bloquear",icon: FontAwesomeIcons.creditCard),
                  ],

                ),
              )
            ],
          )
          ),
    );       
    
  }
}

buildTransitions({String store, String price, String dia, bool recive = false}){
  return ListTile(
    leading: Container(
      width: 20, height: 40,
      child: CircleAvatar(backgroundColor: Colors.purple,),),
    title: Text('$store'),
    subtitle: Row(
      children: <Widget>[
        Text("R\$ $price,00", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),),
        SizedBox(width: 10,),
        Icon(recive ? FontAwesomeIcons.arrowLeft : FontAwesomeIcons.arrowRight, 
        size: 15, color: recive ? Colors.green : Colors.red
        )
      ],
    ),
    trailing: Text("$dia", style: TextStyle(color:Colors.grey)),

  );
}