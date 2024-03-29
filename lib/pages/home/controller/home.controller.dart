import 'package:cityscope_task/http/services/artwork.service.dart';
import 'package:cityscope_task/pages/home/model/artwork_model.dart';
import 'package:cityscope_task/providers/category_list.provider.dart';
import 'package:cityscope_task/providers/category_selector.provider.dart';
import 'package:cityscope_task/providers/loading.provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeControllerProvider =
    AsyncNotifierProvider<HomeController, List<ArtWorkData>?>(
  () => HomeController(),
);

class HomeController extends AsyncNotifier<List<ArtWorkData>?> {
  ArtWorkService? service;
  List<ArtWorkData>? artList;
  List<String>? artWorkTypeList;
  TextEditingController searchBoxController = TextEditingController();
  int page = 1;
  //List<ArtWorkData>? searchList;
  @override
  build() {
    service = ref.read(artWorkServiceProvider);
    return null;
  }

  //get the artwork list and setup filters
  Future getArtWorkList({bool isGetMore = false}) async {
    try {
      if (!isGetMore) {
        state = const AsyncValue.loading();
        ArtWorkList? list = await service!.getArtWorkList(pageNo: page);
        if (list != null) {
          // artList = [...list.data!];

          state = AsyncValue.data(
            [
              ...((list.data!
                    ..removeWhere(
                      (element) =>
                          element.artistTitles == null ||
                          element.artistTitles!.isEmpty ||
                          element.imageId == null ||
                          element.artworkTypeTitle == null ||
                          element.title == null ||
                          element.id == null ||
                          element.description == null,
                    ))
                  .toList())
            ],
          );
          artList = state.value;
          ref.read(categoryListProvider.notifier).generateList(artList!);
        }
      } else {
        ArtWorkList? list = await service!.getArtWorkList(pageNo: page);
        if (list != null) {
          // artList = [...list.data!];

          state = AsyncValue.data(
            [
              ...artList!,
              ...((list.data!
                    ..removeWhere(
                      (element) =>
                          element.artistTitles == null ||
                          element.artistTitles!.isEmpty ||
                          element.imageId == null ||
                          element.artworkTypeTitle == null ||
                          element.title == null ||
                          element.id == null ||
                          element.description == null,
                    ))
                  .toList())
            ],
          );

          artList = state.value;
          ref.read(categoryListProvider.notifier).generateList(artList!);
          ref.read(isLoadingProvider.notifier).toggleLoading();
        }
      }
    } catch (e) {
      // print(e);
    }
  }

  //search the artwork based on name of artist and artwork
  void searchArtWork(String searchQuery) {
    try {
      ref.read(categorySelectorProvider.notifier).selectIndex(-1);
      if (searchQuery.isEmpty) {
        state = AsyncData(artList);
      }

      state = AsyncValue.data(
        artList
            ?.where(
              (value) => (value.title!
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase()) ||
                  value.artistTitles!.first
                      .toLowerCase()
                      .contains(searchQuery.toLowerCase())),
            )
            .toList(),
      );
      // print(artList);
      // print(state);
    } catch (e) {}
  }

  //filters the artwork
  void filterList(String? selectedFilter) {
    try {
      if (selectedFilter == null) {
        state = AsyncValue.data(artList);
        return;
      }
      state = AsyncValue.data(
        artList
            ?.where((element) => element.artworkTypeTitle == selectedFilter)
            .toList(),
      );
      searchBoxController.clear();
    } catch (e) {}
  }

  Future<void>? downloadArtWork({required int id, required String url}) async {
    try {
      await service!.downloadArtWorkImage(url: url, id: id);
    } catch (e) {}
  }

  //on scroll of page
  Future getMoreArtWorks() async {
    try {
      ref.read(isLoadingProvider.notifier).toggleLoading();
      page++;
      await getArtWorkList(isGetMore: true);
    } catch (e) {}
  }
}
