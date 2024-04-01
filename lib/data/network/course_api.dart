
import 'package:dio/dio.dart';
import 'package:flutter_architecture/data/model/course_detail_dto.dart';
import 'package:flutter_architecture/data/model/list_courses_dto.dart';
import 'package:retrofit/http.dart';

part 'course_api.g.dart';

@RestApi()
abstract class CourseApi {
  factory CourseApi(Dio dio, {String baseUrl}) = _CourseApi;

  @GET('contents?filter[content_types][]=collection')
  Future<ListCoursesDto> getCourseList();

  @GET('{link}')
  Future<CourseDetailDto> getCourse(@Path("link") String link);
}