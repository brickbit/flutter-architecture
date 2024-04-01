
import 'package:flutter_architecture/domain/model/course_detail_bo.dart';
import 'package:flutter_architecture/domain/repository/course_repository.dart';
import 'package:flutter_architecture/domain/usecase/use_case.dart';

class CourseDetailUseCase extends UseCase<String, CourseDetailBO> {
  final CourseRepository _repository;

  CourseDetailUseCase({required CourseRepository repository}) : _repository = repository;

  @override
  Future<CourseDetailBO> invoke(String input) async {
    return _repository.getCourse(input);
  }


}