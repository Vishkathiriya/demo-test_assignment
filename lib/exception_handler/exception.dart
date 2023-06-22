import 'package:http/http.dart' as http;

class RequestTypeNotFoundException implements Exception {
  String cause;
  RequestTypeNotFoundException(this.cause);
}

class CustomException implements Exception {
  final message;
  final prefix;

  CustomException([this.message, this.prefix]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends CustomException {
  FetchDataException([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends CustomException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends CustomException {
  UnauthorisedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends CustomException {
  InvalidInputException([String? message]) : super(message, "Invalid Input: ");
}

class InternalServerException extends CustomException {
  InternalServerException([message])
      : super(message, "Internal Server Error: ");
}

class ForbiddenException extends CustomException {
  ForbiddenException([message]) : super(message, "Forbidden: ");
}

dynamic responseException(http.Response response) {
  switch (response.statusCode) {
    case 400:
      throw BadRequestException(response.body);
    case 401:
      throw UnauthorisedException(response.body);
    case 403:
      throw ForbiddenException(response.body);
    case 500:
      throw InternalServerException(response.body);
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
