import 'package:cityscope_task/pages/details/view/detail.view.dart';
import 'package:cityscope_task/pages/home/view/home.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routesProvider = Provider((ref) => Routes());
GlobalKey<NavigatorState> parentKey = GlobalKey<NavigatorState>();

class Routes {
  final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: HomeView.name,
        builder: (context, state) => const HomeView(),
        routes: [
          GoRoute(
            path: DetailView.name,
            builder: (context, state) => DetailView(
              state.extra as Map<String, dynamic>,
            ),
          )
        ],
      ),
    ],
  );
}
