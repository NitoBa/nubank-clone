import 'package:flutter/material.dart';

Widget buildListBuysRow({String store, String price}){
  return 
        Row(
                            children: <Widget>[
                              Container(
                                height: 5, width: 5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                            SizedBox(width: 10,),
                            Text("$store - R\$ $price", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                            fontSize: 10, letterSpacing: 1),),
                            ],
                          
  );
}