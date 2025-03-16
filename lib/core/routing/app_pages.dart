import 'package:dm_test/features/search/domain/entities/event_entity.dart';
import 'package:dm_test/features/search/presentation/pages/details_view.dart';
import 'package:dm_test/features/search/presentation/pages/search_view.dart';
import 'package:go_router/go_router.dart';
import 'app_links.dart';

class AppPages{

  /// The route configuration.
  static final GoRouter routes = GoRouter(
    initialLocation: AppLinks.search,
    routes: [
      GoRoute(
        path: AppLinks.search,
        name: AppLinks.search,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppLinks.details,
        name: AppLinks.details,
        builder: (context, state) => DetailsView(eventItem: state.extra as EventEntity,),
      ),
    ],
  );

}