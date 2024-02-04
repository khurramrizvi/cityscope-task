import 'package:cityscope_task/pages/home/controller/home.controller.dart';
import 'package:cityscope_task/providers/category_list.provider.dart'
    as categoryProvider;
import 'package:cityscope_task/providers/loading.provider.dart';
import 'package:cityscope_task/widgets/artwork_card.widget.dart';
import 'package:cityscope_task/widgets/category.widget.dart';
import 'package:cityscope_task/widgets/home_shimmer.widget.dart';
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
  ScrollController controller = ScrollController();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(homeControllerProvider.notifier).getArtWorkList();
      controller.addListener(() async {
        if (!ref.watch(isLoadingProvider)) {
          if (controller.offset >= controller.position.maxScrollExtent) {
            await ref.read(homeControllerProvider.notifier).getMoreArtWorks();
          }
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
            Visibility(
              visible: ref
                  .read(categoryProvider.categoryListProvider.notifier)
                  .categories
                  .isNotEmpty,
              child: const CategoryList(),
            ),
            SizedBox(
              height: ref
                      .read(categoryProvider.categoryListProvider.notifier)
                      .categories
                      .isEmpty
                  ? 0
                  : 16,
            ),
            ref.watch(homeControllerProvider).when(
                  data: (data) => Expanded(
                    child: GridView.builder(
                      controller: controller,
                      //  physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 220,
                      ),
                      itemCount: data?.length ?? 0,
                      itemBuilder: (context, index) => ArtWorkCard(
                        id: data![index].id!,
                        artName: data[index].title!,
                        artCategory: data[index].artworkTypeTitle!,
                        artworkUrl:
                            'https://www.artic.edu/iiif/2/${data[index].imageId}/full/843,/0/default.jpg',
                        artist: data[index].artistTitles!.first,
                        description: data[index].description ?? '',
                      ),
                    ),
                  ),
                  loading: () => const Expanded(child: HomeShimmer()),
                  error: (error, stackTrace) => const Center(
                    child: Text('Some Error Occurred'),
                  ),
                ),
            Visibility(
              visible: ref.read(isLoadingProvider),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
