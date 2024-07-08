import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muze_innovation/data/data_source/data_source_provider.dart';
import 'package:muze_innovation/presentation/auth/ui/auth_screen.dart';
import 'package:muze_innovation/presentation/details/ui/details_screen.dart';
import 'package:muze_innovation/presentation/home/ui/home_screen.dart';
import 'package:muze_innovation/presentation/loading/ui/loading_screen.dart';
import 'package:muze_innovation/presentation/profile/ui/profile_screen.dart';
import 'package:muze_innovation/presentation/splash/ui/splash_screen.dart';
import 'package:muze_innovation/utils/observers/app_observer.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  runApp(const LoadingScreen());

  final prefs = await SharedPreferences.getInstance();
  return runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      observers: [
        AppObserver(),
      ],
      child: MuzeInnovation(),
    ),
  );
}

class MuzeInnovation extends StatelessWidget {
  MuzeInnovation({super.key});

  final _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: 'details/:id',
            builder: (context, state) => DetailsScreen(
              id: state.pathParameters['id'],
            ),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Muze innovation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
