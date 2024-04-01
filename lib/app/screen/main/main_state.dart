
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/domain/model/course_bo.dart';

part 'main_state.g.dart';

@CopyWith()
class MainState extends Equatable {
  final bool loading;
  final String? error;
  final List<CourseBO> courses;

  const MainState({
    this.loading = false,
    this.error,
    this.courses = const []
  });

  @override
  List<Object?> get props => [
    loading,
    error,
    courses
  ];
}