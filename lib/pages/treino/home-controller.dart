import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:nubank/models/aluno-model.dart';
import 'constants.dart';
import 'package:nubank/models/user-model.dart';
part 'home-controller.g.dart';


class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store{


  static Map alunoMap = jsonDecode(estudante);
  var aluno = Aluno.fromJson(alunoMap);

  static Map userMap = jsonDecode(usuario);
  var user = UserModel.fromJson(userMap);

@observable
String nome = '';

@action
increment(){
  print('${user.nome}');
  nome = '${aluno.notas[2]}';
}
}