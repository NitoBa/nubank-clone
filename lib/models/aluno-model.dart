import 'package:json_annotation/json_annotation.dart';
part 'aluno-model.g.dart';


@JsonSerializable(nullable: false)
class Aluno {
   String nome;
   String email;
   List <double> notas;

  Aluno({this.nome, this.email, this.notas});

  factory Aluno.fromJson(Map<String, dynamic> json) => _$AlunoFromJson(json);

  Map<String, dynamic> toJson() => _$AlunoToJson(this);
}