import 'package:dmdata_api/src/model/v2/gd/earthquake_list.dart';
import 'package:test/test.dart';

void main() {
  test('正常なJSONからの完全なレスポンスのデシリアライズ', () {
    final json = {
      'responseId': '3750ccf70651e928',
      'responseTime': '2021-04-01T00:00:00.000Z',
      'status': 'ok',
      'items': [
        {
          'id': 1584,
          'type': 'normal',
          'eventId': '20210808085414',
          'originTime': '2021-08-08T08:54:00+09:00',
          'arrivalTime': '2021-08-08T08:54:00+09:00',
          'maxInt': '2',
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
        }
      ],
      'nextToken': 'bmV4dCAgICAgICAgMTU2NA',
      'nextPooling': 'cG9sbGluZyAgICAgMTkzNQ',
      'nextPoolingInterval': 2000,
    };

    final response = EarthquakeListResponse.fromJson(json);

    // レスポンスの検証
    expect(response.responseId, '3750ccf70651e928');
    expect(response.responseTime, '2021-04-01T00:00:00.000Z');
    expect(response.status, 'ok');
    expect(response.nextToken, 'bmV4dCAgICAgICAgMTU2NA');
    expect(response.nextPooling, 'cG9sbGluZyAgICAgMTkzNQ');
    expect(response.nextPoolingInterval, 2000);

    // items[0]の検証
    final item = response.items.first;
    expect(item.id, 1584);
    expect(item.type, 'normal');
    expect(item.eventId, '20210808085414');
    expect(item.originTime, '2021-08-08T08:54:00+09:00');
    expect(item.arrivalTime, '2021-08-08T08:54:00+09:00');
    expect(item.maxInt, '2');

    // 震源要素の検証
    final hypocenter = item.hypocenter!;
    expect(hypocenter.code, '787');
    expect(hypocenter.name, '鹿児島湾');

    // 座標の検証
    final coordinate = hypocenter.coordinate;
    expect(coordinate.latitude.text, '31.3˚N');
    expect(coordinate.latitude.value, '31.3000');
    expect(coordinate.longitude.text, '130.6˚E');
    expect(coordinate.longitude.value, '130.6000');
    expect(coordinate.height.type, '高さ');
    expect(coordinate.height.unit, 'm');
    expect(coordinate.height.value, '0');
    expect(coordinate.geodeticSystem, '日本測地系');

    // 深さの検証
    final depth = hypocenter.depth;
    expect(depth.type, '深さ');
    expect(depth.unit, 'km');
    expect(depth.value, '0');
    expect(depth.condition, 'ごく浅い');

    // マグニチュードの検証
    final magnitude = item.magnitude!;
    expect(magnitude.type, 'マグニチュード');
    expect(magnitude.unit, 'Mj');
    expect(magnitude.value, '2.6');
  });

  test('震度速報のみの場合（震源要素なし）も正常にデシリアライズできること', () {
    final json = {
      'responseId': '3750ccf70651e928',
      'responseTime': '2021-04-01T00:00:00.000Z',
      'status': 'ok',
      'items': [
        {
          'id': 1584,
          'type': 'normal',
          'eventId': '20210808085414',
          'arrivalTime': '2021-08-08T08:54:00+09:00',
          'maxInt': '2',
        }
      ],
      'nextPooling': 'cG9sbGluZyAgICAgMTkzNQ',
      'nextPoolingInterval': 2000,
    };

    final response = EarthquakeListResponse.fromJson(json);
    final item = response.items.first;

    expect(item.id, 1584);
    expect(item.type, 'normal');
    expect(item.eventId, '20210808085414');
    expect(item.arrivalTime, '2021-08-08T08:54:00+09:00');
    expect(item.maxInt, '2');
    expect(item.originTime, null);
    expect(item.hypocenter, null);
    expect(item.magnitude, null);
  });
}
