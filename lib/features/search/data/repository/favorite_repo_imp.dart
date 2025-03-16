import 'package:dm_test/features/search/data/models/favorited_event.dart';
import 'package:dm_test/features/search/domain/repository/favorite_repo.dart';
import 'package:hive/hive.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  static const String _boxName = 'favoritesBox';

  @override
  Future<void> addToFavorites(FavoritedEvent item) async {
    var box = await Hive.openBox<FavoritedEvent>(_boxName);
    await box.put(item.id, item);
  }

  @override
  Future<void> removeFromFavorites(String id) async {
    var box = await Hive.openBox<FavoritedEvent>(_boxName);
    await box.delete(id);
  }

  @override
  Future<List<FavoritedEvent>> getFavorites() async {
    var box = await Hive.openBox<FavoritedEvent>(_boxName);
    return box.values.toList();
  }

  @override
  Future<bool> isFavorite(String id) async {
    var box = await Hive.openBox<FavoritedEvent>(_boxName);
    return box.containsKey(id);
  }

}