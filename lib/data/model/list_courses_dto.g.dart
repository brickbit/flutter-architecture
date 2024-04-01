// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_courses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCoursesDto _$ListCoursesDtoFromJson(Map<String, dynamic> json) =>
    ListCoursesDto(
      (json['data'] as List<dynamic>)
          .map((e) => CourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCoursesDtoToJson(ListCoursesDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
