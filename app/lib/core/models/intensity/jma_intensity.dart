import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum JmaIntensity {
  one('1'),
  two('2'),
  three('3'),
  four('4'),
  fiveLower('5-'),
  fiveUpper('5+'),
  sixLower('6-'),
  sixUpper('6+'),
  seven('7'),
  unknown('不明'),
  over('over'),
  ;

  const JmaIntensity(this.value);

  factory JmaIntensity.fromString(String value) =>
      JmaIntensity.values.firstWhere(
        (e) => e.value == value,
      );

  final String value;
}

@JsonEnum(valueField: 'value')
enum JmaLgIntensity {
  zero('0'),
  one('1'),
  two('2'),
  three('3'),
  four('4'),
  unknown('不明'),
  over('over'),
  ;

  const JmaLgIntensity(this.value);

  factory JmaLgIntensity.fromString(String value) =>
      JmaLgIntensity.values.firstWhere((e) => e.value == value);

  final String value;
}
