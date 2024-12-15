import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'type')
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
  fiveUpperNoInput('!5-'),
  ;

  const JmaIntensity(this.type);

  factory JmaIntensity.fromString(String value) =>
      JmaIntensity.values.firstWhere(
        (e) => e.type == value,
      );

  final String type;
}

@JsonEnum(valueField: 'type')
enum JmaLgIntensity {
  zero('0'),
  one('1'),
  two('2'),
  three('3'),
  four('4'),
  unknown('不明'),
  over('over'),
  ;

  const JmaLgIntensity(this.type);

  factory JmaLgIntensity.fromString(String value) =>
      JmaLgIntensity.values.firstWhere((e) => e.type == value);

  final String type;
}
