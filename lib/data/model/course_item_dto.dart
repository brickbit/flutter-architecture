
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'course_attributes_dto.dart';

part 'course_item_dto.g.dart';

@JsonSerializable()
class CourseItemDto extends Equatable {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'data')
  final CourseAttributesDto data;

  const CourseItemDto({
    required this.id,
    required this.type,
    required this.data,
  });

  factory CourseItemDto.fromJson(Map<String, dynamic> json) =>
      _$CourseItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseItemDtoToJson(this);

  @override
  List<Object?> get props => [
    id,
    type,
    data
  ];
}