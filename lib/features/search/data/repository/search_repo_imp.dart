import 'package:dm_test/core/network/api_end_points.dart';
import 'package:dm_test/core/network/network_api_service.dart';
import 'package:dm_test/features/search/data/models/search_result.dart';
import 'package:dm_test/features/search/domain/repository/search_repo.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SearchRepoImp extends SearchRepo{
  final NetworkApiService _apiService = NetworkApiService();

  @override
  Future<SearchResult?> searchForEvents(String search) async {
    try {
      dynamic response = await _apiService.getApiResponse(
          url: ApiEndPoints().search,
          queryParameters: {
            "q" : search,
            "client_id" : dotenv.env['CLIENT_ID'],
          }
      );


      return SearchResult.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

}