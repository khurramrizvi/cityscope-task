import 'package:cityscope_task/widgets/artwork_card.widget.dart';
import 'package:cityscope_task/widgets/category.widget.dart';
import 'package:cityscope_task/widgets/search.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: const Text('Artworks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SearchWidget(),
            const SizedBox(
              height: 8,
            ),
            CategoryList(),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 220,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => const ArtWorkCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
