
import 'package:flutter_architecture/domain/model/course_bo.dart';
import 'package:flutter_architecture/domain/repository/course_repository.dart';
import 'package:flutter_architecture/domain/usecase/use_case.dart';

class CourseListUseCase extends UseCase<dynamic, List<CourseBO>> {
  final CourseRepository _repository;

  CourseListUseCase({required CourseRepository repository}) : _repository = repository;

  @override
  Future<List<CourseBO>> invoke(dynamic input) {
    return _repository.getCourses();
  }
}