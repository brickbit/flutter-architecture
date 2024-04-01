
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'course_detail_data_dto.dart';
import 'course_item_dto.dart';

part 'course_detail_dto.g.dart';

@JsonSerializable()
class CourseDetailDto extends Equatable {
  @JsonKey(name: 'data')
  final CourseDetailDataDto data;
  @JsonKey(name: 'attributes')
  final List<CourseItemDto>? content;

  const CourseDetailDto({
    required this.data,
    required this.content,
  });

  factory CourseDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseDetailDtoToJson(this);

  @override
  List<Object?> get props => [
    data,
    content,
  ];
}