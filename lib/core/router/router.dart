import 'package:catbreeds/features/home/models/cat_model.dart';
import 'package:catbreeds/features/home/ui/cat_detail_screen.dart';
import 'package:catbreeds/features/home/ui/home_screen.dart';
import 'package:catbreeds/features/splash/ui/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: SplashScreen.route,
    routes: [
      GoRoute(
        path: SplashScreen.route,
        name: SplashScreen.route,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: CatsHomeScreen.route,
        name: CatsHomeScreen.route,
        builder: (_, __) => const CatsHomeScreen(),
      ),
      GoRoute(
        path: CatDetailScreen.route,
        name: CatDetailScreen.route,
        builder: (_, state) {
          final cat = state.extra as CatModel;
          return CatDetailScreen(cat: cat);
        },
      ),
    ],
  ),
);
