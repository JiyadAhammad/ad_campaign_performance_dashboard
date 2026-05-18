import 'package:ad_campaign_performance_dashboard/core/error/failures.dart';
import 'package:ad_campaign_performance_dashboard/core/usecase/usecase.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/entity/campaign_entity.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/usecase/get_campaigns_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helper/test_helper.dart';

void main() {
  late MockCampaignRepository mockRepository;
  late GetCampaignsUseCase useCase;

  setUp(() {
    mockRepository = MockCampaignRepository();

    useCase = GetCampaignsUseCase(repository: mockRepository);
  });

  test('should get campaigns from repository', () async {
    final List<CampaignEntity> entities = <CampaignEntity>[];

    when(
      () => mockRepository.getCampaigns(),
    ).thenAnswer((_) async => right(entities));

    final Either<Failure, List<CampaignEntity>> result = await useCase(
      NoParams(),
    );

    expect(result, right(entities));

    verify(() => mockRepository.getCampaigns()).called(1);
  });
}
