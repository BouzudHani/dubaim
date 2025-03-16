import 'package:cached_network_image/cached_network_image.dart';
import 'package:dm_test/core/utils/themes/app_colors.dart';
import 'package:dm_test/features/search/data/models/favorited_event.dart';
import 'package:dm_test/features/search/domain/entities/event_entity.dart';
import 'package:dm_test/features/search/presentation/viewmodels/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


class DetailsView extends StatefulWidget {
  final EventEntity eventItem;
  const DetailsView({super.key, required this.eventItem});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  SearchViewModel searchViewModel = SearchViewModel();

  @override
  void initState() {
    searchViewModel = context.read<SearchViewModel>();
    searchViewModel.isFavorite = widget.eventItem.isFavorite ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 22
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: ()=> context.pop(),
                        radius: 50,
                        child: Icon(
                          Icons.arrow_back_ios ,
                          color: AppColors.colorSecondary,
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Flexible(
                        child: Text(
                          widget.eventItem.name ??  "",
                          maxLines : 2,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              color: AppColors.colorBlack,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(width: 16,),
                      InkWell(
                        onTap: ()
                        => searchViewModel.addFavorite(
                            FavoritedEvent(widget.eventItem.id!, widget.eventItem.name!)),
                        child: Selector<SearchViewModel , bool>(
                          selector: (context , p)=> p.isFavorite,
                          builder: (context , val , child) {
                            return val
                                ? Icon(
                                    Icons.favorite,
                                    size: 28,
                                    color: AppColors.colorRed,
                                  )
                                : Icon(
                                    Icons.favorite_border ,
                                    size: 28,
                                    color: AppColors.colorBlack.withValues(alpha: 0.4),);
                          }
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16,),
                Divider(color: AppColors.colorBlack.withValues(alpha: 0.2),),
                const SizedBox(height: 22,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    imageUrl: widget.eventItem.image ?? "https://documents.bcci.tv/resizedimageskirti/Ahmedabad_compress.jpg",
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                const SizedBox(height: 16,),
                Text(
                  widget.eventItem.date ?? "11/11/2026",
                  maxLines : 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                Text(
                  widget.eventItem.location ?? "US",
                  maxLines : 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.colorBlack.withValues(alpha: 0.4),
                    fontSize: 14,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
