// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../test_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestModel _$TestModelFromJson(Map<String, dynamic> json) => TestModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  data:
      json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TestModelToJson(TestModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'data': instance.data,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  color: json['color'] as String?,
  capacity: json['capacity'] as String?,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'color': instance.color,
  'capacity': instance.capacity,
};
