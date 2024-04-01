// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseItemDto _$CourseItemDtoFromJson(Map<String, dynamic> json) =>
    CourseItemDto(
      id: json['id'] as String,
      type: json['type'] as String,
      data: CourseAttributesDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseItemDtoToJson(CourseItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'data': instance.data,
    };
