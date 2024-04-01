
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'course_episode_bo.g.dart';

@CopyWith()
class CourseEpisodeBO extends Equatable {
  final int id;
  final String title;
  final String description;

  const CourseEpisodeBO({
    required this.id,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description
  ];
}