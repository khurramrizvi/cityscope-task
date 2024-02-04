import 'package:flutter_riverpod/flutter_riverpod.dart';

final categorySelectorProvider = NotifierProvider<CategorySelector, int>(() {
  return CategorySelector();
});

class CategorySelector extends Notifier<int> {
  @override
  int build() {
    return -1;
  }

  selectIndex(int value) {
    state = value;
  }

  int get selectedIndex => state;
}
