import 'package:cityscope_task/pages/home/controller/home.controller.dart';
import 'package:cityscope_task/widgets/artwork_card.widget.dart';
import 'package:cityscope_task/widgets/category.widget.dart';
import 'package:cityscope_task/widgets/search.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerStatefulWidget {
  static const String name = '/';
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(homeControllerProvider.notifier).getArtWorkList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final artList = ref.watch(homeControllerProvider);
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
            artList.when(
              data: (data) => Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 220,
                  ),
                  itemCount: artList.value?.length ?? 0,
                  itemBuilder: (context, index) => ArtWorkCard(
                    id: artList.value![index].id!,
                    artName: artList.value![index].title!,
                    artCategory: artList.value![index].artworkTypeTitle!,
                    artworkUrl:
                        'https://www.artic.edu/iiif/2/${artList.value![index].imageId}/full/843,/0/default.jpg',
                    artist: artList.value![index].artistTitles!.first,
                    description: artList.value![index].description ?? '',
                  ),
                ),
              ),
              loading: () => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (error, stackTrace) => const Center(
                child: Text('Some Error Occurred'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
