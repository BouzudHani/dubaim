import 'package:dm_test/features/search/data/models/favorited_event.dart';
import 'package:dm_test/features/search/data/repository/favorite_repo_imp.dart';

class GetFavoritesUseCase {
  final FavoritesRepositoryImpl repository = FavoritesRepositoryImpl();


  Future<List<FavoritedEvent>> call() {
    return repository.getFavorites();
  }
}