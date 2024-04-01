// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetailDto _$CourseDetailDtoFromJson(Map<String, dynamic> json) =>
    CourseDetailDto(
      data: CourseDetailDataDto.fromJson(json['data'] as Map<String, dynamic>),
      content: (json['attributes'] as List<dynamic>?)
          ?.map((e) => CourseItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseDetailDtoToJson(CourseDetailDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'attributes': instance.content,
    };
