
import '../model/course_bo.dart';
import '../model/course_detail_bo.dart';

abstract class CourseRepository {
  Future<List<CourseBO>> getCourses();
  Future<CourseDetailBO> getCourse(String link);
}