
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'course_dto.dart';

part 'list_courses_dto.g.dart';

@JsonSerializable()
class ListCoursesDto extends Equatable {
  @JsonKey(name: 'data')
  final List<CourseDto> data;

  const ListCoursesDto(this.data);

  factory ListCoursesDto.fromJson(Map<String, dynamic> json) =>
      _$ListCoursesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ListCoursesDtoToJson(this);

  @override
  List<Object?> get props =>[
    data
  ];
}