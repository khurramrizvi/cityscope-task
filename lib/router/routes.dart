import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static GlobalKey<NavigatorState> parentKey = GlobalKey<NavigatorState>();
  static final route = GoRoute(
    parentNavigatorKey: parentKey,
    path: '/',
    routes: const <RouteBase>[],
  );
}
