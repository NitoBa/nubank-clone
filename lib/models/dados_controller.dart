
import 'dart:convert';
import 'package:nubank/models/dado.dart';
import 'package:nubank/pages/treino/constants.dart';
import 'package:mobx/mobx.dart';
part 'dados_controller.g.dart';

class DataController = _DadosControllerBase with _$DataController;

abstract class _DadosControllerBase with Store {

static Map batMap = jsonDecode(batJson);
var morcego = Dados.fromJson(batMap);

@observable
  String title = "";
@observable
  int index = 0;

@action
changetitle(){
  index = 1;
  title = morcego.familias.emballorunidae.generos1.toJson().keys.elementAt(index);
  print(title);
}

}

 printbat({int index}) {
  
  //var familias = morcego.familias.toJson();
  //print(familias.keys.elementAt(index));

  //print("${batMap["familias"]["Mormoopidae"]["generos2"].keys}");
}