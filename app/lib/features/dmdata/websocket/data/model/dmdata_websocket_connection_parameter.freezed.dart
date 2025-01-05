// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmdata_websocket_connection_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DmdataWebsocketConnectionParameter _$DmdataWebsocketConnectionParameterFromJson(
    Map<String, dynamic> json) {
  return _DmdataWebsocketConnectionParameter.fromJson(json);
}

/// @nodoc
mixin _$DmdataWebsocketConnectionParameter {
  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  String get format => throw _privateConstructorUsedError;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  String? get appName => throw _privateConstructorUsedError;

  /// Serializes this DmdataWebsocketConnectionParameter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataWebsocketConnectionParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataWebsocketConnectionParameterCopyWith<
          DmdataWebsocketConnectionParameter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataWebsocketConnectionParameterCopyWith<$Res> {
  factory $DmdataWebsocketConnectionParameterCopyWith(
          DmdataWebsocketConnectionParameter value,
          $Res Function(DmdataWebsocketConnectionParameter) then) =
      _$DmdataWebsocketConnectionParameterCopyWithImpl<$Res,
          DmdataWebsocketConnectionParameter>;
  @useResult
  $Res call(
      {@Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      String format,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      String? appName});
}

/// @nodoc
class _$DmdataWebsocketConnectionParameterCopyWithImpl<$Res,
        $Val extends DmdataWebsocketConnectionParameter>
    implements $DmdataWebsocketConnectionParameterCopyWith<$Res> {
  _$DmdataWebsocketConnectionParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataWebsocketConnectionParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? appName = freezed,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DmdataWebsocketConnectionParameterImplCopyWith<$Res>
    implements $DmdataWebsocketConnectionParameterCopyWith<$Res> {
  factory _$$DmdataWebsocketConnectionParameterImplCopyWith(
          _$DmdataWebsocketConnectionParameterImpl value,
          $Res Function(_$DmdataWebsocketConnectionParameterImpl) then) =
      __$$DmdataWebsocketConnectionParameterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      String format,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      String? appName});
}

/// @nodoc
class __$$DmdataWebsocketConnectionParameterImplCopyWithImpl<$Res>
    extends _$DmdataWebsocketConnectionParameterCopyWithImpl<$Res,
        _$DmdataWebsocketConnectionParameterImpl>
    implements _$$DmdataWebsocketConnectionParameterImplCopyWith<$Res> {
  __$$DmdataWebsocketConnectionParameterImplCopyWithImpl(
      _$DmdataWebsocketConnectionParameterImpl _value,
      $Res Function(_$DmdataWebsocketConnectionParameterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataWebsocketConnectionParameter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? appName = freezed,
  }) {
    return _then(_$DmdataWebsocketConnectionParameterImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DmdataWebsocketConnectionParameterImpl
    implements _DmdataWebsocketConnectionParameter {
  const _$DmdataWebsocketConnectionParameterImpl(
      {@Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      this.format = 'raw',
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      this.appName});

  factory _$DmdataWebsocketConnectionParameterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DmdataWebsocketConnectionParameterImplFromJson(json);

  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @override
  @JsonKey()
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  final String format;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @override
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  final String? appName;

  @override
  String toString() {
    return 'DmdataWebsocketConnectionParameter(format: $format, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataWebsocketConnectionParameterImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, format, appName);

  /// Create a copy of DmdataWebsocketConnectionParameter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataWebsocketConnectionParameterImplCopyWith<
          _$DmdataWebsocketConnectionParameterImpl>
      get copyWith => __$$DmdataWebsocketConnectionParameterImplCopyWithImpl<
          _$DmdataWebsocketConnectionParameterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataWebsocketConnectionParameterImplToJson(
      this,
    );
  }
}

abstract class _DmdataWebsocketConnectionParameter
    implements DmdataWebsocketConnectionParameter {
  const factory _DmdataWebsocketConnectionParameter(
      {@Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      final String format,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      final String? appName}) = _$DmdataWebsocketConnectionParameterImpl;

  factory _DmdataWebsocketConnectionParameter.fromJson(
          Map<String, dynamic> json) =
      _$DmdataWebsocketConnectionParameterImpl.fromJson;

  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @override
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  String get format;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @override
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  String? get appName;

  /// Create a copy of DmdataWebsocketConnectionParameter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataWebsocketConnectionParameterImplCopyWith<
          _$DmdataWebsocketConnectionParameterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
