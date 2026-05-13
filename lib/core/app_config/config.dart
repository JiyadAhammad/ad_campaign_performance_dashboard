import '../environment/env.dart';

class AppConfig {
  static const String devBaseUrl =
      'https://e5eb0d84-2b7e-4c32-98b9-233668b4e189.mock.pstmn.io/v1';
  // TODO(Jiyad): Update Production url here
  static const String prodBaseUrl = 'Update Production url here';

  static String get baseUrl {
    if (Environment.current == AppEnvironment.dev) {
      return devBaseUrl;
    } else {
      return prodBaseUrl;
    }
  }
}
