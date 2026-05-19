class ServerException implements Exception {
  ServerException(this.message);
  final String message;
}

class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;
}

class UnknownException implements Exception {
  UnknownException(this.message);
  final String message;
}
