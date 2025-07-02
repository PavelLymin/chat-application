class AuthException implements Exception {
  final String message;
  AuthException([this.message = 'Произошла ошибка Auth']);
}

class ApiException implements Exception {
  final String message;
  ApiException([this.message = 'Произошла ошибка Api']);
}
