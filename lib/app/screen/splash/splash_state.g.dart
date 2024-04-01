// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SplashStateCWProxy {
  SplashState finish(bool finish);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashState call({
    bool? finish,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSplashState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSplashState.copyWith.fieldName(...)`
class _$SplashStateCWProxyImpl implements _$SplashStateCWProxy {
  const _$SplashStateCWProxyImpl(this._value);

  final SplashState _value;

  @override
  SplashState finish(bool finish) => this(finish: finish);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashState call({
    Object? finish = const $CopyWithPlaceholder(),
  }) {
    return SplashState(
      finish: finish == const $CopyWithPlaceholder() || finish == null
          ? _value.finish
          // ignore: cast_nullable_to_non_nullable
          : finish as bool,
    );
  }
}

extension $SplashStateCopyWith on SplashState {
  /// Returns a callable class that can be used as follows: `instanceOfSplashState.copyWith(...)` or like so:`instanceOfSplashState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SplashStateCWProxy get copyWith => _$SplashStateCWProxyImpl(this);
}
