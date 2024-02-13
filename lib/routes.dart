import 'package:routefly/routefly.dart';

import 'app/(public)/favorites_page.dart' as a0;
import 'app/(public)/home_page.dart' as a1;
import 'app/(public)/search_page.dart' as a2;
import 'app/(public)/settings_page.dart' as a3;
import 'app/(public)/splash_page.dart' as a4;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/favorites',
    uri: Uri.parse('/favorites'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.FavoritesPage(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a1.HomePage(),
    ),
  ),
  RouteEntity(
    key: '/search',
    uri: Uri.parse('/search'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.SearchPage(),
    ),
  ),
  RouteEntity(
    key: '/settings',
    uri: Uri.parse('/settings'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a3.SettingsPage(),
    ),
  ),
  RouteEntity(
    key: '/splash',
    uri: Uri.parse('/splash'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a4.SplashPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  favorites: '/favorites',
  home: '/home',
  search: '/search',
  settings: '/settings',
  splash: '/splash',
);
