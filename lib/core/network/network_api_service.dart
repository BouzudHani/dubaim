import 'dart:convert';
import 'dart:io';
import 'base_api_service.dart';
import 'package:http/http.dart' as http;
import 'error/app_exception.dart';

class NetworkApiService extends BaseApiService {

  @override
  Future getApiResponse(
      {required String url,
        dynamic body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header}) async {
    dynamic responseJson;
    try {
      final response = await http.get(
          Uri.https(BaseApiService.baseUrl, url, queryParameters),
          headers: header);

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(jsonDecode("{\"message\" : \"No Internet Connection \"}"));
    }
    return responseJson;
  }

  @override
  Future postApiResponse(
      {required String url,
        required dynamic body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header}) async {
    dynamic responseJson;
    try {
      final response = await http.post(
        Uri.https(BaseApiService.baseUrl, url),
        headers: header,
        body: jsonEncode(body),
      );

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(jsonDecode("{\"message\" : \"No Internet Connection \"}"));
    }
    return responseJson;
  }

  @override
  Future deleteApiResponse(
      {required String url,
        required body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header}) async {
    dynamic responseJson;
    try {
      final response = await http.delete(
        Uri.https(BaseApiService.baseUrl, url),
        headers: header,
        body: jsonEncode(body),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(jsonDecode("{\"message\" : \"No Internet Connection \"}"));
    }
    return responseJson;
  }

  @override
  Future putApiResponse(
      {required String url,
        required body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header}) async {
    dynamic responseJson;
    try {
      final response = await http.put(
        Uri.https(BaseApiService.baseUrl, url),
        headers: header,
        body: jsonEncode(body),
      );
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(jsonDecode("{\"message\" : \"No Internet Connection \"}"));
    }
    return responseJson;
  }

  dynamic returnResponse(dynamic response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(jsonDecode(response.body));
      case 401:
        throw UnauthorisedException(jsonDecode(response.body));

      case 403:
        throw UnauthorisedException(jsonDecode(response.body));
      case 404:
        throw NotFoundException(jsonDecode(response.body));
      case 409:
        throw ConflictException(jsonDecode(response.body));
      case 504:
        throw GatewayTimeoutException(jsonDecode(response.body));
      case 500:
      default:
        throw FetchDataException(jsonDecode(response.body));
    }
  }

}
