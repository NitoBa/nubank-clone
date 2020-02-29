
class UserModel {
  String nome;
  String email;
  int idade;
  int telefone;
  String profissao;

  UserModel({this.nome, this.email, this.idade, this.telefone, this.profissao});

  UserModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    idade = json['idade'];
    telefone = json['telefone'];
    profissao = json['profissao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['idade'] = this.idade;
    data['telefone'] = this.telefone;
    data['profissao'] = this.profissao;
    return data;
  }
}

