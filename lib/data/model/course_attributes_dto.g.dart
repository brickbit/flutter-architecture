// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_attributes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseAttributesDto _$CourseAttributesDtoFromJson(Map<String, dynamic> json) =>
    CourseAttributesDto(
      name: json['name'] as String?,
      description: json['description'] as String?,
      formattedDescription: json['formattedDescription'] as String?,
      artworkUrl: json['card_artwork_url'] as String?,
      difficulty: json['difficulty'] as String?,
      contributor: json['contributor'] as String?,
    );

Map<String, dynamic> _$CourseAttributesDtoToJson(
        CourseAttributesDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'formattedDescription': instance.formattedDescription,
      'card_artwork_url': instance.artworkUrl,
      'difficulty': instance.difficulty,
      'contributor': instance.contributor,
    };
