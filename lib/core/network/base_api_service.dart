
abstract class BaseApiService {
  static String baseUrl = "api.seatgeek.com";

  Future<dynamic> getApiResponse(
      {required String url,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header});

  Future<dynamic> postApiResponse(
      {required String url,
        required dynamic body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header});

  Future<dynamic> putApiResponse(
      {required String url,
        required dynamic body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header});

  Future<dynamic> deleteApiResponse(
      {required String url,
        required dynamic body,
        Map<String, dynamic>? queryParameters,
        Map<String, String>? header});
}
