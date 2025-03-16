import 'package:dm_test/core/utils/themes/app_colors.dart';
import 'package:dm_test/features/search/presentation/viewmodels/search_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'core/routing/app_pages.dart';
import 'features/search/data/models/favorited_event.dart';

void main() async {
  /// loading .env file for stored Keys
  await dotenv.load(fileName: ".env");

  /// initialise database
  await Hive.initFlutter();
  Hive.registerAdapter(FavoritedEventAdapter());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SearchViewModel()),
      ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Event App',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.colorWhite,
            useMaterial3: true,
          ),
          routerConfig: AppPages.routes,
        ),
    );
  }
}

