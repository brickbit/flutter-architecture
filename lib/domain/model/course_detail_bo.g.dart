// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail_bo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CourseDetailBOCWProxy {
  CourseDetailBO title(String title);

  CourseDetailBO description(String description);

  CourseDetailBO image(String image);

  CourseDetailBO content(List<CourseEpisodeBO> content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseDetailBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseDetailBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseDetailBO call({
    String? title,
    String? description,
    String? image,
    List<CourseEpisodeBO>? content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCourseDetailBO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCourseDetailBO.copyWith.fieldName(...)`
class _$CourseDetailBOCWProxyImpl implements _$CourseDetailBOCWProxy {
  const _$CourseDetailBOCWProxyImpl(this._value);

  final CourseDetailBO _value;

  @override
  CourseDetailBO title(String title) => this(title: title);

  @override
  CourseDetailBO description(String description) =>
      this(description: description);

  @override
  CourseDetailBO image(String image) => this(image: image);

  @override
  CourseDetailBO content(List<CourseEpisodeBO> content) =>
      this(content: content);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseDetailBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseDetailBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseDetailBO call({
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return CourseDetailBO(
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
      content: content == const $CopyWithPlaceholder() || content == null
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as List<CourseEpisodeBO>,
    );
  }
}

extension $CourseDetailBOCopyWith on CourseDetailBO {
  /// Returns a callable class that can be used as follows: `instanceOfCourseDetailBO.copyWith(...)` or like so:`instanceOfCourseDetailBO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CourseDetailBOCWProxy get copyWith => _$CourseDetailBOCWProxyImpl(this);
}
