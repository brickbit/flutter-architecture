// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DetailStateCWProxy {
  DetailState loading(bool loading);

  DetailState error(String? error);

  DetailState course(CourseDetailBO? course);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  DetailState call({
    bool? loading,
    String? error,
    CourseDetailBO? course,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDetailState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDetailState.copyWith.fieldName(...)`
class _$DetailStateCWProxyImpl implements _$DetailStateCWProxy {
  const _$DetailStateCWProxyImpl(this._value);

  final DetailState _value;

  @override
  DetailState loading(bool loading) => this(loading: loading);

  @override
  DetailState error(String? error) => this(error: error);

  @override
  DetailState course(CourseDetailBO? course) => this(course: course);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  DetailState call({
    Object? loading = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? course = const $CopyWithPlaceholder(),
  }) {
    return DetailState(
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      course: course == const $CopyWithPlaceholder()
          ? _value.course
          // ignore: cast_nullable_to_non_nullable
          : course as CourseDetailBO?,
    );
  }
}

extension $DetailStateCopyWith on DetailState {
  /// Returns a callable class that can be used as follows: `instanceOfDetailState.copyWith(...)` or like so:`instanceOfDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DetailStateCWProxy get copyWith => _$DetailStateCWProxyImpl(this);
}
