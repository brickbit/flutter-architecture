// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetailDataDto _$CourseDetailDataDtoFromJson(Map<String, dynamic> json) =>
    CourseDetailDataDto(
      attributes: CourseAttributesDto.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseDetailDataDtoToJson(
        CourseDetailDataDto instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };
