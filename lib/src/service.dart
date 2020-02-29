import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nubank/pages/treino/constants.dart';

class MyService{

    Future <Map> minhaRequisicao() async{
    http.Response response = await http.get(resquest2);
    return json.decode(response.body);

  }
}