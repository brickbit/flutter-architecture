
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'course_bo.g.dart';

@CopyWith()
class CourseBO extends Equatable {
  final String id;
  final String title;
  final String description;
  final String image;
  final String link;

  const CourseBO({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.link
  });

  @override
  List<Object> get props => [
    id,
    title,
    description,
    image,
    link
  ];
}