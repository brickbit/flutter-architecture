
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/domain/model/course_detail_bo.dart';

part 'detail_state.g.dart';

@CopyWith()
class DetailState extends Equatable {
  final bool loading;
  final String? error;
  final CourseDetailBO? course;

  const DetailState({
    this.loading = false,
    this.error,
    this.course
  });

  @override
  List<Object?> get props => [
    loading,
    error,
    course
  ];
}