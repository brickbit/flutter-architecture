// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
      id: json['id'] as String,
      attributes: CourseAttributesDto.fromJson(
          json['attributes'] as Map<String, dynamic>),
      links: LinkDto.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'links': instance.links,
    };
