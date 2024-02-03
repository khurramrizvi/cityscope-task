import 'package:cityscope_task/http/services/artwork.service.dart';
import 'package:cityscope_task/pages/home/model/artwork_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeControllerProvider =
    AsyncNotifierProvider<HomeController, List<ArtWorkData>?>(
  () => HomeController(),
);

class HomeController extends AsyncNotifier<List<ArtWorkData>?> {
  ArtWorkService? service;
  List<ArtWorkData>? artList;
  //List<ArtWorkData>? searchList;
  @override
  build() {
    service = ref.read(artWorkServiceProvider);
    return null;
  }

  Future getArtWorkList() async {
    try {
      state = const AsyncValue.loading();
      ArtWorkList? list = await service!.getArtWorkList();
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
      }
    } catch (e) {
      print(e);
    }
  }

  void searchArtWork(String searchQuery) {
    try {
      if (searchQuery.isEmpty) {
        getArtWorkList();
      }

      state = AsyncValue.data(
        artList
            ?.where(
              (value) =>
                  value.title
                      ?.toLowerCase()
                      .contains(searchQuery.toLowerCase()) ??
                  false,
            )
            .toList(),
      );
      // print(artList);
      // print(state);
    } catch (e) {}
  }
}
