import 'package:dm_test/features/search/data/models/search_result.dart';
import 'package:dm_test/features/search/data/repository/search_repo_imp.dart';

class SearchUseCase{
  final SearchRepoImp repoImp = SearchRepoImp();

  Future<SearchResult?> execute(String q) async {
     return await repoImp.searchForEvents(q);
  }

}