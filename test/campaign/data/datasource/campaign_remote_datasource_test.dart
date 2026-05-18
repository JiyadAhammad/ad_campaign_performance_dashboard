import 'dart:convert';

import 'package:ad_campaign_performance_dashboard/core/network/end_points/api_end_points.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/data/datasource/campaign_remote_datasource_impl.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/data/model/campaign_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helper/test_helper.dart';

void main() {
  late MockDio mockDio;
  late CampaignRemoteDataSourceImpl datasource;

  setUp(() {
    mockDio = MockDio();

    datasource = CampaignRemoteDataSourceImpl(dio: mockDio);
  });

  group('getCampaigns', () {
    test('should return list of campaigns when api success', () async {
      final Map<String, dynamic> mockResponse = <String, dynamic>{
        'campaigns': <Map<String, Object>>[
          <String, Object>{
            'id': '1',
            'name': 'Summer Sale',
            'status': 'active',
            'objective': 'awareness',
            'channel': 'Social',
            'budget': 1000,
            'spend': 500,
            'impressions': 10000,
            'clicks': 500,
            'start_date': '2026-01-01',
            'end_date': '2026-01-31',
            'currency': 'USD',
            'thumbnail': 'image.png',
            'ctr': 5.0,
            'budget_utilization': 50,
          },
        ],
        'total': 1,
      };

      when(() => mockDio.get(ApiEndPoints.campaigns)).thenAnswer(
        (_) async => Response<dynamic>(
          requestOptions: RequestOptions(),
          data: jsonEncode(mockResponse),
          statusCode: 200,
        ),
      );

      final List<CampaignModel> result = await datasource.getCampaigns();

      expect(result.length, 1);
      expect(result.first.name, 'Summer Sale');

      verify(() => mockDio.get(ApiEndPoints.campaigns)).called(1);
    });
  });
}
