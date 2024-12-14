import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_component.freezed.dart';
part 'earthquake_component.g.dart';

/// 地震情報・津波情報における地震の発生位置、規模を記載
@freezed
class EarthquakeComponent with _$EarthquakeComponent {
  const factory EarthquakeComponent({
    /// 地震発生時刻を分単位で、ISO8601の日本時間で記載する
    required String originTime,

    /// 地震検知時刻を分単位で、ISO8601の日本時間で記載する
    required String arrivalTime,

    /// 地震の震源要素
    required Hypocenter hypocenter,

    /// 地震の規模
    required Magnitude magnitude,
  }) = _EarthquakeComponent;

  factory EarthquakeComponent.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeComponentFromJson(json);
}

/// 地震の震源要素
@freezed
class Hypocenter with _$Hypocenter {
  const factory Hypocenter({
    /// 震央地名
    required String name,

    /// 震央地名コード
    required String code,

    /// 震源地の空間座標
    required Coordinate coordinate,

    /// 深さ情報
    required Depth depth,

    /// 震源位置の補足情報
    Auxiliary? auxiliary,
  }) = _Hypocenter;

  factory Hypocenter.fromJson(Map<String, dynamic> json) =>
      _$HypocenterFromJson(json);
}

/// 震源要素の位置情報
@freezed
class Coordinate with _$Coordinate {
  const factory Coordinate({
    /// 緯度要素
    required CoordinateValue latitude,

    /// 経度要素
    required CoordinateValue longitude,

    /// 高さ要素
    required Height height,

    /// 測地系
    required String geodeticSystem,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}

/// 緯度・経度要素
@freezed
class CoordinateValue with _$CoordinateValue {
  const factory CoordinateValue({
    /// 表記
    required String text,

    /// 数値
    required String value,
  }) = _CoordinateValue;

  factory CoordinateValue.fromJson(Map<String, dynamic> json) =>
      _$CoordinateValueFromJson(json);
}

/// 高さ要素
@freezed
class Height with _$Height {
  const factory Height({
    /// 種類
    required String type,

    /// 単位
    required String unit,

    /// 数値
    required String value,
  }) = _Height;

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}

/// 深さ要素
@freezed
class Depth with _$Depth {
  const factory Depth({
    /// 種類
    required String type,

    /// 単位
    required String unit,

    /// 数値
    required String value,

    /// 例外的な表現をする場合の文字列
    String? condition,
  }) = _Depth;

  factory Depth.fromJson(Map<String, dynamic> json) => _$DepthFromJson(json);
}

/// 震源位置の補足情報
@freezed
class Auxiliary with _$Auxiliary {
  const factory Auxiliary({
    /// 震源位置の捕捉位置を記載
    required String text,

    /// 震源位置の捕捉位置を表現する代表地域コード
    required String code,

    /// 震源位置の捕捉位置を表現する代表地域名
    required String name,

    /// 代表地域から震源への方角を16方位で表現
    required String direction,

    /// 代表地域と震源の距離情報
    required Distance distance,
  }) = _Auxiliary;

  factory Auxiliary.fromJson(Map<String, dynamic> json) =>
      _$AuxiliaryFromJson(json);
}

/// 代表地域と震源の距離情報
@freezed
class Distance with _$Distance {
  const factory Distance({
    /// 距離情報の単位
    required String unit,

    /// 代表地域と震源の距離
    required String value,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}

/// 地震の規模（マグニチュード）
@freezed
class Magnitude with _$Magnitude {
  const factory Magnitude({
    /// マグニチュードの種類
    required String type,

    /// マグニチュードの種別
    required String unit,

    /// マグニチュードの数値
    String? value,

    /// マグニチュードの数値が求まらない事項を記載
    String? condition,
  }) = _Magnitude;

  factory Magnitude.fromJson(Map<String, dynamic> json) =>
      _$MagnitudeFromJson(json);
}
