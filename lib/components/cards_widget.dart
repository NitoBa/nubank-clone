import 'package:flutter/material.dart';

Widget buildCards({String title, IconData icon}){
  return GestureDetector( 
      child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 110, width: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [BoxShadow(
                            blurRadius: 7,
                            color: Colors.grey[200]
                          )]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(icon, size: 40, color: Colors.purple),
                             Text(title, style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),)          
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
      onTap: (){
      }
  );
}