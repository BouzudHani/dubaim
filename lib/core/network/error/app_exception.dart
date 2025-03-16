class AppException implements Exception {
  final Map<String , dynamic> message;

  AppException(this.message);

  @override
  String toString() {
    return message.toString();
  }
}

class FetchDataException extends AppException {
  FetchDataException(
      super.message);
}

class BadRequestException extends AppException {
  BadRequestException(
      super.message);
}

class UnauthorisedException extends AppException {
  UnauthorisedException(
      super.message);
}

class NotFoundException extends AppException {
  NotFoundException(
      super.message);
}

class ConflictException extends AppException {
  ConflictException(
      super.message);
}

class InvalidInputException extends AppException {
  InvalidInputException(super.message);
}

class GatewayTimeoutException extends AppException {
  GatewayTimeoutException(super.message);
}
