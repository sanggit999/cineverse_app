import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cineverse_app/router/routes.dart';
//
import 'package:cineverse_app/presentation/layout/layout_scaffold.dart';
//
import 'package:cineverse_app/presentation/splash/pages/splash_page.dart';
import 'package:cineverse_app/presentation/auth/pages/login_page.dart';
import 'package:cineverse_app/presentation/auth/pages/register_page.dart';
import 'package:cineverse_app/presentation/home/page/home_page.dart';
import 'package:cineverse_app/presentation/search/page/search_page.dart';
import 'package:cineverse_app/presentation/favorite/page/favorties_page.dart';
import 'package:cineverse_app/presentation/profile/page/profile_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.splash,
  routes: [
    // SplashPage
    GoRoute(
      path: Routes.splash,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    // LoginPage
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    // RegisterPage
    GoRoute(
      path: Routes.register,
      builder: (context, state) {
        return const RegisterPage();
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
              path: Routes.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.search,
              builder: (context, state) => const SearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.favorites,
              builder: (context, state) => const FavoritesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              builder: (context, state) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
