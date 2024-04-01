
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/domain/model/course_episode_bo.dart';

part 'course_detail_bo.g.dart';

@CopyWith()
class CourseDetailBO extends Equatable {
  final String title;
  final String description;
  final String image;
  final List<CourseEpisodeBO> content;

  const CourseDetailBO({
    required this.title,
    required this.description,
    required this.image,
    required this.content
  });

  @override
  List<Object?> get props => [
    title,
    description,
    image,
    content
  ];
}