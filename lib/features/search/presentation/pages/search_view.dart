import 'package:dm_test/core/utils/themes/app_colors.dart';
import 'package:dm_test/features/search/presentation/viewmodels/search_view_model.dart';
import 'package:dm_test/features/search/presentation/widgests/event_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';


class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late SearchViewModel searchViewModel ;

  @override
  void initState() {
    searchViewModel = context.read<SearchViewModel>();
    searchViewModel.loadFavorites();
    searchViewModel.search("");
    searchViewModel.initSearchListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  color : AppColors.colorPrimary,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.colorPrimary.withValues(alpha:1.4),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search , color: AppColors.colorWhite,),
                              const SizedBox(width: 4.0,),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6
                                  ),
                                  height: 40,
                                  child: Selector<SearchViewModel , String>(
                                    selector: (context , p)=> searchViewModel.searchController.text,
                                    builder: (context , val , child) {
                                      return TextField(
                                        controller: searchViewModel.searchController,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: AppColors.colorWhite,),
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Search an event",
                                            hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: AppColors.colorWhite)
                                        ),
                                      );
                                    }
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4.0,),
                              InkWell(
                                onTap: ()=> searchViewModel.clearSearch(),
                                child: Icon(
                                  Icons.close ,
                                  size: 20,
                                  color: AppColors.colorWhite,),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12.0,),
                      Text(
                        "Cancel" ,
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.colorWhite),),
                    ],
                  ),
                ),
                Expanded(
                    child: Consumer<SearchViewModel>(
                      builder: (context , val,child) {
                        return val.loading
                            ?  Center(
                                child: CircularProgressIndicator(color: AppColors.colorPrimary,),
                              )
                            : val.events.isEmpty
                            ? const Center(child: Text("No Result"),)
                            : ListView.builder(
                                 itemCount: val.events.length,
                                itemBuilder: (context , index){
                                  return EventItem(
                                    isFavorite: searchViewModel.isItemFavorite(val.events[index].id.toString()),
                                    date: DateFormat('yyyy-MM-dd hh:mm a').format(val.events[index].datetimeUtc ?? DateTime.now()),
                                    name: val.events[index].title,
                                    location: val.events[index].venue?.extendedAddress,
                                    image: val.events[index].performers?[0].image,
                                    id : val.events[index].id.toString(),
                                  );
                                }
                            );
                      }
                    ))
          ],
        ),
      ),
    );
  }
}
