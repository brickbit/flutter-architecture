// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_episode_bo.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CourseEpisodeBOCWProxy {
  CourseEpisodeBO id(int id);

  CourseEpisodeBO title(String title);

  CourseEpisodeBO description(String description);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseEpisodeBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseEpisodeBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseEpisodeBO call({
    int? id,
    String? title,
    String? description,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCourseEpisodeBO.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCourseEpisodeBO.copyWith.fieldName(...)`
class _$CourseEpisodeBOCWProxyImpl implements _$CourseEpisodeBOCWProxy {
  const _$CourseEpisodeBOCWProxyImpl(this._value);

  final CourseEpisodeBO _value;

  @override
  CourseEpisodeBO id(int id) => this(id: id);

  @override
  CourseEpisodeBO title(String title) => this(title: title);

  @override
  CourseEpisodeBO description(String description) =>
      this(description: description);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CourseEpisodeBO(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CourseEpisodeBO(...).copyWith(id: 12, name: "My name")
  /// ````
  CourseEpisodeBO call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return CourseEpisodeBO(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
    );
  }
}

extension $CourseEpisodeBOCopyWith on CourseEpisodeBO {
  /// Returns a callable class that can be used as follows: `instanceOfCourseEpisodeBO.copyWith(...)` or like so:`instanceOfCourseEpisodeBO.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CourseEpisodeBOCWProxy get copyWith => _$CourseEpisodeBOCWProxyImpl(this);
}
