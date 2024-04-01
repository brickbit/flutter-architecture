
import 'package:flutter_architecture/data/model/course_dto.dart';
import 'package:flutter_architecture/data/model/course_item_dto.dart';
import 'package:flutter_architecture/data/model/list_courses_dto.dart';
import 'package:flutter_architecture/domain/model/course_bo.dart';
import 'package:flutter_architecture/domain/model/course_detail_bo.dart';
import 'package:flutter_architecture/domain/model/course_episode_bo.dart';

import '../model/course_detail_dto.dart';

extension ListCoursesDtoMapper on ListCoursesDto {
  List<CourseBO> toBo() {
    return data.map((course) => course.toBo()).toList();
  }
}

extension CourseDtoMapper on CourseDto {
  CourseBO toBo() {
    return CourseBO(
        id: id,
        title: attributes.name ?? "",
        description: attributes.description ?? "",
        image: attributes.artworkUrl ?? "",
        link: links.link
    );
  }
}

extension CourseDetatilDtoMapper on CourseDetailDto {
  CourseDetailBO toBo() {
    return CourseDetailBO(
        title: data.attributes.name ?? '',
        description: data.attributes.description ?? '',
        image: data.attributes.artworkUrl ?? '',
        content: content?.map((e) => e.toBo()).toList() ?? []
    );
  }
}

extension CourseItemDtoMapper on CourseItemDto {
  CourseEpisodeBO toBo() {
    return CourseEpisodeBO(id: int.tryParse(id) ?? 0, title: data.name ?? '', description: data.description ?? '');
  }
}