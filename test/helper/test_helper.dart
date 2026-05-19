import 'package:ad_campaign_performance_dashboard/core/usecase/usecase.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/data/datasource/i_campaign_remote_datasource.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/repository/i_campaign_repository.dart';
import 'package:ad_campaign_performance_dashboard/features/campaigns/domain/usecase/get_campaigns_usecase.dart';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockCampaignRemoteDatasource extends Mock
    implements ICampaignRemoteDatasource {}

class MockCampaignRepository extends Mock implements ICampaignRepository {}

class MockGetCampaignsUseCase extends Mock implements GetCampaignsUseCase {}

class MockEmitter<T> extends Mock implements Emitter<T> {}

class FakeNoParams extends Fake implements NoParams {}
