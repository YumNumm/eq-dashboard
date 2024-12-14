// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:dmdata_api/src/model/v2/contract/contract_list.dart';
import 'package:test/test.dart';

void main() {
  group('ContractList', () {
    test('正常なJSONからデシリアライズできること', () {
      final json = {
        'responseId': '2c343ee3f1007df5',
        'responseTime': '2021-04-01T00:00:00.000Z',
        'status': 'ok',
        'items': [
          {
            'id': 92,
            'planId': 1,
            'planName': '地震・津波関連',
            'classification': 'telegram.earthquake',
            'price': {
              'day': 15,
              'month': 350,
            },
            'start': '2021-01-01T01:01:00.000Z',
            'isValid': true,
            'connectionCounts': 1,
          },
        ],
      };

      final response = ContractList.fromJson(json);

      expect(response.responseId, '2c343ee3f1007df5');
      expect(response.responseTime, '2021-04-01T00:00:00.000Z');
      expect(response.status, 'ok');

      final item = response.items.first;
      expect(item.id, 92);
      expect(item.planId, 1);
      expect(item.planName, '地震・津波関連');
      expect(item.classification, 'telegram.earthquake');
      expect(item.price.day, 15);
      expect(item.price.month, 350);
      expect(item.start, '2021-01-01T01:01:00.000Z');
      expect(item.isValid, true);
      expect(item.connectionCounts, 1);
    });

    test('エラーレスポンスをデシリアライズできること', () {
      final json = {
        'responseId': '66d23c0cede77d82',
        'responseTime': '2021-04-01T00:00:00.000Z',
        'status': 'error',
        'error': {
          'message': 'Invalid parameter',
          'code': 400,
        },
      };

      final response = ContractList.fromJson(json);

      expect(response.responseId, '66d23c0cede77d82');
      expect(response.responseTime, '2021-04-01T00:00:00.000Z');
      expect(response.status, 'error');
      expect(response.error?.message, 'Invalid parameter');
      expect(response.error?.code, 400);
    });

    test('JSONシリアライズが正常に動作すること', () {
      const response = ContractList(
        responseId: '2c343ee3f1007df5',
        responseTime: '2021-04-01T00:00:00.000Z',
        status: 'ok',
        items: [
          ContractItem(
            id: 92,
            planId: 1,
            planName: '地震・津波関連',
            classification: 'telegram.earthquake',
            price: ContractPrice(
              day: 15,
              month: 350,
            ),
            start: '2021-01-01T01:01:00.000Z',
            isValid: true,
            connectionCounts: 1,
          ),
        ],
      );

      final json = jsonDecode(jsonEncode(response));

      expect(json['responseId'], '2c343ee3f1007df5');
      expect(json['responseTime'], '2021-04-01T00:00:00.000Z');
      expect(json['status'], 'ok');

      final item = json['items'][0];
      expect(item['id'], 92);
      expect(item['planId'], 1);
      expect(item['planName'], '地震・津波関連');
      expect(item['classification'], 'telegram.earthquake');
      expect(item['price']['day'], 15);
      expect(item['price']['month'], 350);
      expect(item['start'], '2021-01-01T01:01:00.000Z');
      expect(item['isValid'], true);
      expect(item['connectionCounts'], 1);
    });

    test('オプショナルフィールドがnullの場合も正常に動作すること', () {
      final json = {
        'responseId': '2c343ee3f1007df5',
        'responseTime': '2021-04-01T00:00:00.000Z',
        'status': 'ok',
        'items': [
          {
            'id': null,
            'planId': 1,
            'planName': '地震・津波関連',
            'classification': 'telegram.earthquake',
            'price': {
              'day': 15,
              'month': 350,
            },
            'start': null,
            'isValid': true,
            'connectionCounts': 1,
          },
        ],
      };

      final response = ContractList.fromJson(json);
      final item = response.items.first;

      expect(item.id, null);
      expect(item.start, null);
    });
  });
}
