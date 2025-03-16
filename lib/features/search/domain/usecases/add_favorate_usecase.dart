import 'package:dm_test/features/search/data/models/favorited_event.dart';
import 'package:dm_test/features/search/data/repository/favorite_repo_imp.dart';

class AddFavoriteUseCase {
  final FavoritesRepositoryImpl repository = FavoritesRepositoryImpl();


  Future<void> call(FavoritedEvent item) async {
    if (await repository.isFavorite(item.id)) {
      await repository.removeFromFavorites(item.id);
    } else {
      await repository.addToFavorites(item);
    }
  }
}