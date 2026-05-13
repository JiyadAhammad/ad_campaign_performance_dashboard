import 'package:dio/dio.dart';

import '../app_config/config.dart';
import '../environment/env.dart';
import 'interceptor/error_interceptor.dart';
import 'interceptor/logging_interceptor.dart';

class ApiClient {
  ApiClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: <String, dynamic>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio.interceptors.addAll(<Interceptor>[
      if (Environment.current == AppEnvironment.dev) LoggingInterceptor(),
      ErrorInterceptor(),
    ]);
  }

  late final Dio dio;
}
