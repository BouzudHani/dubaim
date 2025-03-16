
import 'package:hive/hive.dart';
part 'favorited_event.g.dart';

@HiveType(typeId: 0)
class FavoritedEvent{

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  FavoritedEvent(this.id , this.name);
}