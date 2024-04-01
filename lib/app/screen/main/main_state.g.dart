// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MainStateCWProxy {
  MainState loading(bool loading);

  MainState error(String? error);

  MainState courses(List<CourseBO> courses);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainState call({
    bool? loading,
    String? error,
    List<CourseBO>? courses,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMainState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMainState.copyWith.fieldName(...)`
class _$MainStateCWProxyImpl implements _$MainStateCWProxy {
  const _$MainStateCWProxyImpl(this._value);

  final MainState _value;

  @override
  MainState loading(bool loading) => this(loading: loading);

  @override
  MainState error(String? error) => this(error: error);

  @override
  MainState courses(List<CourseBO> courses) => this(courses: courses);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainState call({
    Object? loading = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? courses = const $CopyWithPlaceholder(),
  }) {
    return MainState(
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      courses: courses == const $CopyWithPlaceholder() || courses == null
          ? _value.courses
          // ignore: cast_nullable_to_non_nullable
          : courses as List<CourseBO>,
    );
  }
}

extension $MainStateCopyWith on MainState {
  /// Returns a callable class that can be used as follows: `instanceOfMainState.copyWith(...)` or like so:`instanceOfMainState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MainStateCWProxy get copyWith => _$MainStateCWProxyImpl(this);
}
