import 'package:flutter/material.dart';


Widget buildUserInfos(BuildContext context, {
  String username,
  String fatura, 
  String disponivel,
  String parcelado, 
  String utilizado
  }){
  return Column(
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
                        Text('$username', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                        fontSize: 25, letterSpacing: 1.5),)
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[

                            Text("FATURA ATUAL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                              fontSize: 14, letterSpacing: 1.5),),
                            SizedBox(height: 10,),
                            Text("R\$$fatura", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                              fontSize: 50, letterSpacing: 4),),
                            SizedBox(height: 8,),
                            Text("$username Limite", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                            fontSize: 14, letterSpacing: 1.5),),
                            SizedBox(height: 8,),
                            Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(color: Colors.cyan, height: 4, width: MediaQuery.of(context).size.width/3,
                                    margin: EdgeInsets.only(right: 4),
                                    ),
                                SizedBox(height: 5,),
                                Text('Disponivel R\$$disponivel', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(color: Colors.yellow, height: 4, width: MediaQuery.of(context).size.width/4,
                                    margin: EdgeInsets.only(right: 4),
                                    ),
                                SizedBox(height: 5,),
                                Text('Parcelado R\$$parcelado', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start, 
                                  children: <Widget>[
                                    Container(color: Colors.red, height: 4, width: MediaQuery.of(context).size.width/5.5,
                        
                                    ),
                                    SizedBox(height: 5,),
                                Text('Utilizado R\$$utilizado', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),),
                                  ],
                                
                                ),

                              
                              ],
                            ),
                          ]
                       )
    ],
  );
}