import 'package:ad_campaign_performance_dashboard/core/enums/enums.dart';
import 'package:ad_campaign_performance_dashboard/core/error/failures.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/entity/campaign_entity.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/presentation/bloc/campaign_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helper/test_helper.dart';

void main() {
  late MockGetCampaignsUseCase mockUseCase;
  late CampaignBloc bloc;

  setUpAll(() {
    registerFallbackValue(FakeNoParams());
  });

  setUp(() {
    mockUseCase = MockGetCampaignsUseCase();

    bloc = CampaignBloc(getCampaignsUseCase: mockUseCase);
  });

  final List<CampaignEntity> campaigns = <CampaignEntity>[
    const CampaignEntity(
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

  blocTest<CampaignBloc, CampaignState>(
    'emits loading and success',
    build: () {
      when(
        () => mockUseCase.call(any()),
      ).thenAnswer((_) async => right(campaigns));

      return bloc;
    },
    act: (CampaignBloc bloc) {
      bloc.add(const CampaignEvent.getCampaigns());
    },
    expect: () => <CampaignState>[
      const CampaignState(isLoading: true),
      CampaignState(
        campaigns: campaigns,
        successMessage: 'Campaign fetched Successfully',
      ),
    ],
  );

  blocTest<CampaignBloc, CampaignState>(
    'emits loading and error',
    build: () {
      when(
        () => mockUseCase.call(any()),
      ).thenAnswer((_) async => left(const ServerFailure('Server Error')));

      return bloc;
    },
    act: (CampaignBloc bloc) {
      bloc.add(const CampaignEvent.getCampaigns());
    },
    expect: () => <CampaignState>[
      const CampaignState(isLoading: true),
      const CampaignState(isError: true, errorMessage: 'Server Error'),
    ],
  );
}
