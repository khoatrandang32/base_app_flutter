import 'package:json_annotation/json_annotation.dart';

part 'generated/test_objects.g.dart';



@JsonSerializable()
class TestModel {
  String? id;
  String? name;
  Data? data;

  TestModel({this.id, this.name, this.data});

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      _$TestModelFromJson(json);

  Map<String, dynamic> toJson() => _$TestModelToJson(this);
}

@JsonSerializable()
class Data {
  String? color;
  String? capacity;

  Data({this.color, this.capacity});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
