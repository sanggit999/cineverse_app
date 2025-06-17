import 'package:flutter/material.dart';
//
import 'package:go_router/go_router.dart';
import 'package:cineverse_app/core/routers/app_routes.dart';
//
import 'package:cineverse_app/presentation/layout/layout_scaffold.dart';
//
import 'package:cineverse_app/presentation/splash/pages/splash_page.dart';
import 'package:cineverse_app/presentation/auth/pages/signin_page.dart';
import 'package:cineverse_app/presentation/auth/pages/signup_page.dart';
import 'package:cineverse_app/presentation/home/pages/home_page.dart';
import 'package:cineverse_app/presentation/search/pages/search_page.dart';
import 'package:cineverse_app/presentation/favorite/pages/favorties_page.dart';
import 'package:cineverse_app/presentation/profile/pages/profile_page.dart';
import 'package:cineverse_app/presentation/language/pages/language_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.splash,
  routes: [
    // LanguagePage
    GoRoute(
      path: AppRoutes.language,
      builder: (context, state) {
        return const LanguagePage();
      },
    ),

    // SplashPage
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    // LoginPage
    GoRoute(
      path: AppRoutes.signin,
      builder: (context, state) {
        return const SigninPage();
      },
    ),
    // RegisterPage
    GoRoute(
      path: AppRoutes.signup,
      builder: (context, state) {
        return const SignupPage();
      },
    ),
    // Bottom Navigation Shell
    StatefulShellRoute.indexedStack(
      builder:
          (context, state, navigationShell) =>
              LayoutScaffold(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.search,
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.favorites,
              builder: (context, state) => const FavoritesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
