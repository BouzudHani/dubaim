import 'package:cached_network_image/cached_network_image.dart';
import 'package:dm_test/core/routing/app_links.dart';
import 'package:dm_test/core/utils/themes/app_colors.dart';
import 'package:dm_test/features/search/domain/entities/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventItem extends StatelessWidget {
  final String? name;
  final String? image;
  final String? date;
  final String? location;
  final String? id;
  final bool? isFavorite;
  const EventItem({super.key, this.name, this.image, this.date, this.location, this.id, this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      => context.push(AppLinks.details ,
          extra: EventEntity(
            name: name,
            location: location,
            date: date,
            id: id,
            image: image,
            isFavorite: isFavorite
          )),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: AppColors.colorBlack.withValues(alpha: 0.2))
            )
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                        imageUrl: image ?? "https://documents.bcci.tv/resizedimageskirti/Ahmedabad_compress.jpg",
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                    ),
                ),
                isFavorite ?? false
                    ? Positioned(
                      top: 4,
                      left: 2,
                      child: Icon(
                          Icons.favorite,
                        size: 18,
                        color: AppColors.colorRed,
                      ))
                    : const SizedBox()
              ],
            ),
            const SizedBox(width: 20,),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "XYZ",
                      maxLines : 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: AppColors.colorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      location ?? "US",
                      maxLines : 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.colorBlack.withValues(alpha: 0.4),
                        fontSize: 14,
                      ),),
                    Text(
                      date ?? "11/11/2026",
                      maxLines : 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.colorBlack.withValues(alpha: 0.4),
                        fontSize: 14,
                      ),),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
