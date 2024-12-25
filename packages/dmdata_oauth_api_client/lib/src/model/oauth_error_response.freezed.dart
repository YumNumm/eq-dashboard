// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthErrorResponse _$OAuthErrorResponseFromJson(Map<String, dynamic> json) {
  return _OAuthErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$OAuthErrorResponse {
  /// エラーコード
  /// - invalid_request: リクエストパラメータが不正
  /// - invalid_client: クライアントが見つからない
  /// - invalid_grant: 認可コードが無効
  /// - unauthorized_client: クライアントに権限がない
  /// - server_error: サーバーエラー
  /// など
  String get error => throw _privateConstructorUsedError;

  /// エラーの詳細な説明
  String? get errorDescription => throw _privateConstructorUsedError;

  /// Serializes this OAuthErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthErrorResponseCopyWith<OAuthErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthErrorResponseCopyWith<$Res> {
  factory $OAuthErrorResponseCopyWith(
          OAuthErrorResponse value, $Res Function(OAuthErrorResponse) then) =
      _$OAuthErrorResponseCopyWithImpl<$Res, OAuthErrorResponse>;
  @useResult
  $Res call({String error, String? errorDescription});
}

/// @nodoc
class _$OAuthErrorResponseCopyWithImpl<$Res, $Val extends OAuthErrorResponse>
    implements $OAuthErrorResponseCopyWith<$Res> {
  _$OAuthErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthErrorResponseImplCopyWith<$Res>
    implements $OAuthErrorResponseCopyWith<$Res> {
  factory _$$OAuthErrorResponseImplCopyWith(_$OAuthErrorResponseImpl value,
          $Res Function(_$OAuthErrorResponseImpl) then) =
      __$$OAuthErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String? errorDescription});
}

/// @nodoc
class __$$OAuthErrorResponseImplCopyWithImpl<$Res>
    extends _$OAuthErrorResponseCopyWithImpl<$Res, _$OAuthErrorResponseImpl>
    implements _$$OAuthErrorResponseImplCopyWith<$Res> {
  __$$OAuthErrorResponseImplCopyWithImpl(_$OAuthErrorResponseImpl _value,
      $Res Function(_$OAuthErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? errorDescription = freezed,
  }) {
    return _then(_$OAuthErrorResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthErrorResponseImpl implements _OAuthErrorResponse {
  const _$OAuthErrorResponseImpl({required this.error, this.errorDescription});

  factory _$OAuthErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthErrorResponseImplFromJson(json);

  /// エラーコード
  /// - invalid_request: リクエストパラメータが不正
  /// - invalid_client: クライアントが見つからない
  /// - invalid_grant: 認可コードが無効
  /// - unauthorized_client: クライアントに権限がない
  /// - server_error: サーバーエラー
  /// など
  @override
  final String error;

  /// エラーの詳細な説明
  @override
  final String? errorDescription;

  @override
  String toString() {
    return 'OAuthErrorResponse(error: $error, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthErrorResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, errorDescription);

  /// Create a copy of OAuthErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthErrorResponseImplCopyWith<_$OAuthErrorResponseImpl> get copyWith =>
      __$$OAuthErrorResponseImplCopyWithImpl<_$OAuthErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _OAuthErrorResponse implements OAuthErrorResponse {
  const factory _OAuthErrorResponse(
      {required final String error,
      final String? errorDescription}) = _$OAuthErrorResponseImpl;

  factory _OAuthErrorResponse.fromJson(Map<String, dynamic> json) =
      _$OAuthErrorResponseImpl.fromJson;

  /// エラーコード
  /// - invalid_request: リクエストパラメータが不正
  /// - invalid_client: クライアントが見つからない
  /// - invalid_grant: 認可コードが無効
  /// - unauthorized_client: クライアントに権限がない
  /// - server_error: サーバーエラー
  /// など
  @override
  String get error;

  /// エラーの詳細な説明
  @override
  String? get errorDescription;

  /// Create a copy of OAuthErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthErrorResponseImplCopyWith<_$OAuthErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
