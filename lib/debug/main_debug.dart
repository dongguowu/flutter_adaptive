import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../features/router/app_router.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('WidgetsFlutterBinding initialized, getting ready to run.');

  // String? loadError;

  // 1. Load environment variables from .env file
  // try {
  //   await dotenv.load(fileName: ".env");
  // } catch (e) {
  //   loadError = ".env file not found or error loading: $e";
  // }

  // 2. Initialize UserSettingsProvider (SharedPreferences)

  // 3. Initialize DarkModeChangeNotifierProvider (depends on UserSettingsProvider)

  // make sure you register it as a Singleton or a lazySingleton
  getIt.registerSingleton<AppRouter>(AppRouter(), signalsReady: true);

  // 4. Setup providers using MultiProvider
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  final String? initialError;

  MyApp({super.key, this.initialError});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}
