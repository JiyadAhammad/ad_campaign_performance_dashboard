import 'package:ad_campaign_performance_dashboard/core/enums/enums.dart';
import 'package:ad_campaign_performance_dashboard/core/error/exceptions.dart';
import 'package:ad_campaign_performance_dashboard/core/error/failures.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/data/model/campaign_model.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/data/repository/campaign_repository_impl.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/entity/campaign_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helper/test_helper.dart';

void main() {
  late MockCampaignRemoteDatasource mockDatasource;
  late CampaignRepositoryImpl repository;

  setUp(() {
    mockDatasource = MockCampaignRemoteDatasource();

    repository = CampaignRepositoryImpl(remoteDataSource: mockDatasource);
  });

  group('getCampaigns', () {
    test('should return campaign entities when success', () async {
      final List<CampaignModel> models = <CampaignModel>[
        const CampaignModel(
          id: '1',
          name: 'Summer Sale',
          status: CampaignStatus.Active,
          objective: CampaignObjective.Awareness,
          channel: AdChannel.Social,
          budget: 1000,
          spend: 500,
          impressions: 10000,
          clicks: 100,
          startDate: '2026-01-01',
          endDate: '2026-01-30',
          currency: 'USD',
          thumbnail: 'image.png',
          ctr: 2.5,
          budgetUtilization: 50,
        ),
      ];

      when(() => mockDatasource.getCampaigns()).thenAnswer((_) async => models);

      final Either<Failure, List<CampaignEntity>> result = await repository
          .getCampaigns();

      expect(result.isRight(), true);

      verify(() => mockDatasource.getCampaigns()).called(1);
    });

    test('should return ServerFailure when exception occurs', () async {
      when(
        () => mockDatasource.getCampaigns(),
      ).thenThrow(ServerException('Server Error'));

      final Either<Failure, List<CampaignEntity>> result = await repository
          .getCampaigns();
      expect(result, isA<Left<Failure, List<CampaignEntity>>>());
    });
  });
}
