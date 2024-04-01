
import 'package:flutter_architecture/data/mapper/course_mapper.dart';
import 'package:flutter_architecture/domain/model/course_bo.dart';
import 'package:flutter_architecture/domain/model/course_detail_bo.dart';
import 'package:flutter_architecture/domain/repository/course_repository.dart';

import '../environment/env.dart';
import '../network/course_api.dart';

class CourseRepositoryImpl extends CourseRepository {
  final CourseApi _api;

  CourseRepositoryImpl(this._api);

  @override
  Future<List<CourseBO>> getCourses() async {
    return await _api.getCourseList().asStream().map((event) => event.toBo()).last;
  }

  @override
  Future<CourseDetailBO> getCourse(String link) async {
    String newLink = link.replaceAll(ENV().config.basePath, '');
    return await _api.getCourse(newLink).asStream().map(
            (event) => event.toBo()
    ).last;
  }
}