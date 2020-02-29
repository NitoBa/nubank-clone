import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/components/buys_widget.dart';
import 'package:nubank/components/cards_widget.dart';
import 'package:nubank/components/userinfo_widget.dart';


class InitialHome extends StatefulWidget {
  @override
  _InitialHomeState createState() => _InitialHomeState();
}

class _InitialHomeState extends State<InitialHome> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 450, width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                ),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Column(
                      children: <Widget>[
                        buildUserInfos(context,
                        username: "Bruno",
                        fatura: "2.300",
                        disponivel: "800",
                        parcelado: "450",
                        utilizado: "250"
                        ),
                        SizedBox(height: 28,),
                        Text("ÚLTIMAS COMPRAS",
                          style: TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold,
                            fontSize: 14, 
                            letterSpacing: 1.5
                              ),
                          ),
                        SizedBox(height: 10,),
                        buildListBuysRow(store: "Apple Store", price: "10,00"),
                        buildListBuysRow(store: "Amazon Store", price: "15,00"),
                        buildListBuysRow(store: "AliExpress", price: "100,00"),
                        buildListBuysRow(store: "Mercado Livre", price: "40,00"),
                      ],
                    ),
              )
              ),
              SizedBox(height: 30,),
              Container(
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[                
                  buildCards(title: 'Indicar', icon: FontAwesomeIcons.userFriends),
                  buildCards(title: 'Transferir', icon: FontAwesomeIcons.exchangeAlt),
                  buildCards(title: 'Pagamentos', icon: FontAwesomeIcons.wallet),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  buildCards(title: "Limite",icon: FontAwesomeIcons.elementor),
                  buildCards(title: 'Bloquear',icon: FontAwesomeIcons.creditCard),
                  buildCards(title: 'Ajuda', icon: FontAwesomeIcons.commentDollar),
                ],
              )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


