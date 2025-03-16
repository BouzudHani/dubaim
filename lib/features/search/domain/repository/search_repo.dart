import 'package:dm_test/features/search/data/models/search_result.dart';

abstract class SearchRepo{

  Future<SearchResult?> searchForEvents(String search);


}