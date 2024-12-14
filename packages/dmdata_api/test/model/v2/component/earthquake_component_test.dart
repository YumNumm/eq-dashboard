// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:dmdata_api/src/model/v2/component/earthquake_component.dart';
import 'package:test/test.dart';

void main() {
  group('EarthquakeComponent', () {
    test('正常なJSONからデシリアライズできること', () {
      final json = {
        'originTime': '2011-03-11T14:46:00+09:00',
        'arrivalTime': '2011-03-11T14:46:00+09:00',
        'hypocenter': {
          'name': '三陸沖',
          'code': '288',
          'coordinate': {
            'latitude': {
              'text': '38.0˚N',
              'value': '38.0000',
            },
            'longitude': {
              'text': '142.9˚E',
              'value': '142.9000',
            },
            'height': {
              'type': '高さ',
              'value': '-10000',
              'unit': 'm',
            },
            'geodeticSystem': '日本測地系',
          },
          'depth': {
            'type': '深さ',
            'value': '10',
            'unit': 'km',
          },
          'auxiliary': {
            'text': '牡鹿半島の東南東１３０ｋｍ付近',
            'code': '202',
            'name': '牡鹿半島',
            'direction': '東南東',
            'distance': {
              'value': '130',
              'unit': 'km',
            },
          },
        },
        'magnitude': {
          'type': 'マグニチュード',
          'unit': 'Mj',
          'value': null,
          'condition': 'Ｍ８を超える巨大地震',
        },
      };

      final component = EarthquakeComponent.fromJson(json);

      expect(component.originTime, '2011-03-11T14:46:00+09:00');
      expect(component.arrivalTime, '2011-03-11T14:46:00+09:00');

      // Hypocenterの検証
      expect(component.hypocenter.name, '三陸沖');
      expect(component.hypocenter.code, '288');

      // Coordinateの検証
      expect(component.hypocenter.coordinate.latitude.text, '38.0˚N');
      expect(component.hypocenter.coordinate.latitude.value, '38.0000');
      expect(component.hypocenter.coordinate.longitude.text, '142.9˚E');
      expect(component.hypocenter.coordinate.longitude.value, '142.9000');
      expect(component.hypocenter.coordinate.height.type, '高さ');
      expect(component.hypocenter.coordinate.height.value, '-10000');
      expect(component.hypocenter.coordinate.height.unit, 'm');
      expect(component.hypocenter.coordinate.geodeticSystem, '日本測地系');

      // Depthの検証
      expect(component.hypocenter.depth.type, '深さ');
      expect(component.hypocenter.depth.value, '10');
      expect(component.hypocenter.depth.unit, 'km');

      // Auxiliaryの検証
      expect(component.hypocenter.auxiliary?.text, '牡鹿半島の東南東１３０ｋｍ付近');
      expect(component.hypocenter.auxiliary?.code, '202');
      expect(component.hypocenter.auxiliary?.name, '牡鹿半島');
      expect(component.hypocenter.auxiliary?.direction, '東南東');
      expect(component.hypocenter.auxiliary?.distance.value, '130');
      expect(component.hypocenter.auxiliary?.distance.unit, 'km');

      // Magnitudeの検証
      expect(component.magnitude.type, 'マグニチュード');
      expect(component.magnitude.unit, 'Mj');
      expect(component.magnitude.value, null);
      expect(component.magnitude.condition, 'Ｍ８を超える巨大地震');
    });

    test('JSONシリアライズが正常に動作すること', () {
      const component = EarthquakeComponent(
        originTime: '2011-03-11T14:46:00+09:00',
        arrivalTime: '2011-03-11T14:46:00+09:00',
        hypocenter: Hypocenter(
          name: '三陸沖',
          code: '288',
          coordinate: Coordinate(
            latitude: CoordinateValue(
              text: '38.0˚N',
              value: '38.0000',
            ),
            longitude: CoordinateValue(
              text: '142.9˚E',
              value: '142.9000',
            ),
            height: Height(
              type: '高さ',
              value: '-10000',
              unit: 'm',
            ),
            geodeticSystem: '日本測地系',
          ),
          depth: Depth(
            type: '深さ',
            value: '10',
            unit: 'km',
          ),
          auxiliary: Auxiliary(
            text: '牡鹿半島の東南東１３０ｋｍ付近',
            code: '202',
            name: '牡鹿半島',
            direction: '東南東',
            distance: Distance(
              value: '130',
              unit: 'km',
            ),
          ),
        ),
        magnitude: Magnitude(
          type: 'マグニチュード',
          unit: 'Mj',
          condition: 'Ｍ８を超える巨大地震',
        ),
      );

      final json = jsonDecode(jsonEncode(component));

      expect(json['originTime'], '2011-03-11T14:46:00+09:00');
      expect(json['arrivalTime'], '2011-03-11T14:46:00+09:00');
      expect(json['hypocenter']['name'], '三陸沖');
      expect(json['hypocenter']['code'], '288');
      expect(json['magnitude']['type'], 'マグニチュード');
      expect(json['magnitude']['unit'], 'Mj');
      expect(json['magnitude']['value'], null);
      expect(json['magnitude']['condition'], 'Ｍ８を超える巨大地震');
    });

    test('auxiliaryがnullの場合も正常に動作すること', () {
      final json = {
        'originTime': '2011-03-11T14:46:00+09:00',
        'arrivalTime': '2011-03-11T14:46:00+09:00',
        'hypocenter': {
          'name': '三陸沖',
          'code': '288',
          'coordinate': {
            'latitude': {
              'text': '38.0˚N',
              'value': '38.0000',
            },
            'longitude': {
              'text': '142.9˚E',
              'value': '142.9000',
            },
            'height': {
              'type': '高さ',
              'value': '-10000',
              'unit': 'm',
            },
            'geodeticSystem': '日本測地系',
          },
          'depth': {
            'type': '深さ',
            'value': '10',
            'unit': 'km',
          },
        },
        'magnitude': {
          'type': 'マグニチュード',
          'unit': 'Mj',
          'value': '7.9',
        },
      };

      final component = EarthquakeComponent.fromJson(json);
      expect(component.hypocenter.auxiliary, null);
      expect(component.magnitude.value, '7.9');
      expect(component.magnitude.condition, null);
    });
  });
}
