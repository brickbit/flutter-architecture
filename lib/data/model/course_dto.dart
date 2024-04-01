
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'course_attributes_dto.dart';
import 'link_dto.dart';

part 'course_dto.g.dart';

@JsonSerializable()
class CourseDto extends Equatable {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'attributes')
  final CourseAttributesDto attributes;
  @JsonKey(name: 'links')
  final LinkDto links;

  const CourseDto({
    required this.id,
    required this.attributes,
    required this.links
  });

  factory CourseDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDtoToJson(this);

  @override
  List<Object?> get props => [
    id,
    attributes,
    links
  ];
}