import 'package:json_annotation/json_annotation.dart';
part 'api-model.g.dart';

@JsonSerializable(nullable: false)
class ApiModel {
  int userId;
  int id;
  String title;
  bool completed;

  ApiModel({this.userId, this.id, this.title, this.completed});

  factory ApiModel.fromJson(Map<String, dynamic> json) => _$ApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiModelToJson(this);
}