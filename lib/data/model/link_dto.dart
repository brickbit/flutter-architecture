
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'link_dto.g.dart';

@JsonSerializable()
class LinkDto extends Equatable {
  @JsonKey(name: 'self')
  final String link;

  const LinkDto({
    required this.link
  });

  factory LinkDto.fromJson(Map<String, dynamic> json) =>
      _$LinkDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LinkDtoToJson(this);

  @override
  List<Object?> get props => [
    link
  ];
}