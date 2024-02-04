import 'package:cityscope_task/pages/home/model/artwork_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryListProvider =
    NotifierProvider<CategoryList, List<String>>(() => CategoryList());

class CategoryList extends Notifier<List<String>> {
  @override
  List<String> build() {
    return [];
  }

  generateList(List<ArtWorkData> list) {
    state = list.map((e) => e.artworkTypeTitle!).toSet().toList();
  }

  List<String> get categories => state;
}
