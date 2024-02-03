import 'package:cityscope_task/pages/home/view/home.view.dart';
import 'package:cityscope_task/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routesProvider).router;
    return MaterialApp.router(
      routerConfig: router,

      theme: ThemeData(
        textTheme: GoogleFonts.muktaMalarTextTheme(),
      ),
      title: 'Artworks',
      //home: const HomeView(),
    );
  }
}
