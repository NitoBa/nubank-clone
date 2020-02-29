// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aluno-model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Aluno _$AlunoFromJson(Map<String, dynamic> json) {
  return Aluno(
    nome: json['nome'] as String,
    email: json['email'] as String,
    notas: (json['notas'] as List).map((e) => (e as num).toDouble()).toList(),
  );
}

Map<String, dynamic> _$AlunoToJson(Aluno instance) => <String, dynamic>{
      'nome': instance.nome,
      'email': instance.email,
      'notas': instance.notas,
    };
