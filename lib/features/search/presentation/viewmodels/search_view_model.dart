import 'dart:async';

import 'package:dm_test/features/search/data/models/favorited_event.dart';
import 'package:dm_test/features/search/data/models/search_result.dart';
import 'package:dm_test/features/search/domain/usecases/add_favorate_usecase.dart';
import 'package:dm_test/features/search/domain/usecases/get_favorate_usecase.dart';
import 'package:dm_test/features/search/domain/usecases/search_usecase.dart';
import 'package:flutter/cupertino.dart';

class SearchViewModel extends ChangeNotifier{

  final SearchUseCase searchUseCase = SearchUseCase();
  final AddFavoriteUseCase addFavoriteUseCase = AddFavoriteUseCase();
  final GetFavoritesUseCase getFavoritesUseCase = GetFavoritesUseCase();

  TextEditingController searchController = TextEditingController();
  Timer? _debounceTimer;

  List<Event> events = [];
  List<FavoritedEvent> favorites = [];
  bool loading = true;
  bool isFavorite = false;

  setLoading(bool l){
    loading = l ;
    notifyListeners();
  }

  setEvent(List<Event> e){
    events = e;
    notifyListeners();
  }

  setIsFavorite(bool f){
    isFavorite = f;
    notifyListeners();
  }

  clearSearch(){
    searchController.text = "";
    search("");
    notifyListeners();
  }

  Future<void> loadFavorites() async {
    favorites = await getFavoritesUseCase.call();
    notifyListeners();
  }

  Future<void> addFavorite(FavoritedEvent item) async {
    setIsFavorite(!isFavorite);
    await addFavoriteUseCase.call(item);
    loadFavorites();
  }

  bool isItemFavorite(String id) {
    return favorites.any((item) => item.id == id);
  }

  void initSearchListener() {
    searchController.addListener(() {
      _debounceTimer?.cancel();
      setLoading(true);
      _debounceTimer = Timer(const Duration(seconds: 2), () {
        if (searchController.text.isNotEmpty) {
          search(searchController.text);
        }else{
          setLoading(false);
        }
      });
    });
  }

  search(String q){
    searchUseCase.execute(q).then((value){
      setLoading(false);
      setEvent(value?.events ?? []);
    }).onError((error, stackTrace){
      setLoading(false);
      setEvent([]);
    });
  }



}