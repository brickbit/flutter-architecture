
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course_attributes_dto.g.dart';

@JsonSerializable()
class CourseAttributesDto extends Equatable {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'formattedDescription')
  final String? formattedDescription;
  @JsonKey(name: 'card_artwork_url')
  final String? artworkUrl;
  @JsonKey(name: 'difficulty')
  final String? difficulty;
  @JsonKey(name: 'contributor')
  final String? contributor;

  const CourseAttributesDto({
    required this.name,
    required this.description,
    required this.formattedDescription,
    required this.artworkUrl,
    required this.difficulty,
    required this.contributor
  });

  factory CourseAttributesDto.fromJson(Map<String, dynamic> json) =>
      _$CourseAttributesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CourseAttributesDtoToJson(this);

  @override
  List<Object?> get props => [
    name,
    description,
    formattedDescription,
    artworkUrl,
    difficulty,
    contributor
  ];
}