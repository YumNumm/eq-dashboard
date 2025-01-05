import 'package:dmdata_api/src/model/v2/gd/earthquake_event.dart';
import 'package:test/test.dart';

void main() {
  group('EarthquakeEvent', () {
    test('正常なJSONからデシリアライズできること', () {
      final json = {
        'responseId': '3750ccf70651e928',
        'responseTime': '2021-04-01T00:00:00.000Z',
        'status': 'ok',
        'event': {
          'id': 1584,
          'type': 'normal',
          'eventId': '20210808085414',
          'originTime': '2021-08-08T08:54:00+09:00',
          'arrivalTime': '2021-08-08T08:54:00+09:00',
          'hypocenter': {
            'code': '787',
            'name': '鹿児島湾',
            'coordinate': {
              'latitude': {
                'text': '31.3˚N',
                'value': '31.3000',
              },
              'longitude': {
                'text': '130.6˚E',
                'value': '130.6000',
              },
              'height': {
                'type': '高さ',
                'unit': 'm',
                'value': '0',
              },
              'geodeticSystem': '日本測地系',
            },
            'depth': {
              'type': '深さ',
              'unit': 'km',
              'value': '0',
              'condition': 'ごく浅い',
            },
          },
          'magnitude': {
            'type': 'マグニチュード',
            'unit': 'Mj',
            'value': '2.6',
          },
          'maxInt': '2',
          'telegrams': [
            {
              'serial': 0,
              'id': '...',
              'originalId': '...',
              'classification': 'telegram.earthquake',
              'head': {
                'type': 'VXSE53',
                'author': 'RJTD',
                'time': '2021-08-07T23:58:00.000Z',
                'designation': null,
                'test': false,
              },
              'receivedTime': '2021-08-07T23:58:10.311Z',
              'xmlReport': {
                'head': {
                  'title': '震源・震度情報',
                  'serial': '1',
                  'eventId': '20210808085414',
                  'headline': '　８日０８時５４分ころ、地震がありました。',
                  'infoKind': '地震情報',
                  'infoType': '発表',
                  'reportDateTime': '2021-08-08T08:58:00+09:00',
                  'targetDateTime': '2021-08-08T08:58:00+09:00',
                  'infoKindVersion': '1.0_1',
                },
                'control': {
                  'title': '震源・震度に関する情報',
                  'status': '通常',
                  'dateTime': '2021-08-07T23:58:08Z',
                  'editorialOffice': '気象庁本庁',
                  'publishingOffice': '気象庁',
                },
              },
              'schema': {
                'type': 'earthquake-information',
                'version': '1.0.0',
              },
              'format': 'json',
              'url': 'https://data.api.dmdata.jp/v1/...',
            },
          ],
        },
      };

      final response = EarthquakeEvent.fromJson(json);

      expect(response.responseId, '3750ccf70651e928');
      expect(response.responseTime, '2021-04-01T00:00:00.000Z');
      expect(response.status, 'ok');

      final event = response.event;
      expect(event.id, 1584);
      expect(event.type, 'normal');
      expect(event.eventId, '20210808085414');
      expect(event.originTime, '2021-08-08T08:54:00+09:00');
      expect(event.arrivalTime, '2021-08-08T08:54:00+09:00');
      expect(event.maxInt, '2');

      final hypocenter = event.hypocenter;
      expect(hypocenter?.code, '787');
      expect(hypocenter?.name, '鹿児島湾');
      expect(hypocenter?.coordinate.latitude?.text, '31.3˚N');
      expect(hypocenter?.coordinate.latitude?.value, '31.3000');
      expect(hypocenter?.coordinate.longitude?.text, '130.6˚E');
      expect(hypocenter?.coordinate.longitude?.value, '130.6000');
      expect(hypocenter?.coordinate.height?.type, '高さ');
      expect(hypocenter?.coordinate.height?.value, '0');
      expect(hypocenter?.coordinate.height?.unit, 'm');
      expect(hypocenter?.coordinate.geodeticSystem, '日本測地系');
      expect(hypocenter?.depth.type, '深さ');
      expect(hypocenter?.depth.value, '0');
      expect(hypocenter?.depth.unit, 'km');
      expect(hypocenter?.depth.condition, 'ごく浅い');

      final magnitude = event.magnitude;
      expect(magnitude?.type, 'マグニチュード');
      expect(magnitude?.unit, 'Mj');
      expect(magnitude?.value, '2.6');

      final telegram = event.telegrams.first;
      expect(telegram.serial, 0);
      expect(telegram.classification, 'telegram.earthquake');
      expect(telegram.head.type, 'VXSE53');
      expect(telegram.head.author, 'RJTD');
      expect(telegram.head.time, '2021-08-07T23:58:00.000Z');
      expect(telegram.head.designation, null);
      expect(telegram.head.test, false);
      expect(telegram.receivedTime, '2021-08-07T23:58:10.311Z');
      expect(telegram.schema.type, 'earthquake-information');
      expect(telegram.schema.version, '1.0.0');
      expect(telegram.format, 'json');
    });
    test('オプショナルフィールドがnullの場合も正常に動作すること', () {
      final json = {
        'responseId': '3750ccf70651e928',
        'responseTime': '2021-04-01T00:00:00.000Z',
        'status': 'ok',
        'event': {
          'id': 1584,
          'type': 'normal',
          'eventId': '20210808085414',
          'arrivalTime': '2021-08-08T08:54:00+09:00',
          'maxInt': null,
          'telegrams': <void>[],
        },
      };

      final response = EarthquakeEvent.fromJson(json);
      final event = response.event;

      expect(event.originTime, null);
      expect(event.hypocenter, null);
      expect(event.magnitude, null);
      expect(event.maxInt, null);
      expect(event.maxLgInt, null);
      expect(event.lgCategory, null);
      expect(event.telegrams, isEmpty);
    });
  });
}
