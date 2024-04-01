
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'course_attributes_dto.dart';

part 'course_detail_data_dto.g.dart';

@JsonSerializable()
class CourseDetailDataDto extends Equatable {
  @JsonKey(name: 'attributes')
  final CourseAttributesDto attributes;

  const CourseDetailDataDto({
    required this.attributes,
  });

  factory CourseDetailDataDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailDataDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailDataDtoToJson(this);

  @override
  List<Object?> get props => [
    attributes,
  ];
}