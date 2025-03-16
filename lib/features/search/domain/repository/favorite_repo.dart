import 'package:dm_test/features/search/data/models/favorited_event.dart';

abstract class FavoritesRepository{

  Future<void> addToFavorites(FavoritedEvent item);
  Future<void> removeFromFavorites(String id);
  Future<List<FavoritedEvent>> getFavorites();
  Future<bool> isFavorite(String id);

}