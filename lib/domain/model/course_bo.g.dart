// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_bo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CourseBOCWProxy {
  CourseBO id(String id);

  CourseBO title(String title);

  CourseBO description(String description);

  CourseBO image(String image);

  CourseBO link(String link);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseBO call({
    String? id,
    String? title,
    String? description,
    String? image,
    String? link,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCourseBO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCourseBO.copyWith.fieldName(...)`
class _$CourseBOCWProxyImpl implements _$CourseBOCWProxy {
  const _$CourseBOCWProxyImpl(this._value);

  final CourseBO _value;

  @override
  CourseBO id(String id) => this(id: id);

  @override
  CourseBO title(String title) => this(title: title);

  @override
  CourseBO description(String description) => this(description: description);

  @override
  CourseBO image(String image) => this(image: image);

  @override
  CourseBO link(String link) => this(link: link);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseBO call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? link = const $CopyWithPlaceholder(),
  }) {
    return CourseBO(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      image: image == const $CopyWithPlaceholder() || image == null
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String,
      link: link == const $CopyWithPlaceholder() || link == null
          ? _value.link
          // ignore: cast_nullable_to_non_nullable
          : link as String,
    );
  }
}

extension $CourseBOCopyWith on CourseBO {
  /// Returns a callable class that can be used as follows: `instanceOfCourseBO.copyWith(...)` or like so:`instanceOfCourseBO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CourseBOCWProxy get copyWith => _$CourseBOCWProxyImpl(this);
}
