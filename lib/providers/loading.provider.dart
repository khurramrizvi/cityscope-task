import 'package:flutter_riverpod/flutter_riverpod.dart';

final isLoadingProvider = NotifierProvider<Loading, bool>(() => Loading());

class Loading extends Notifier<bool> {
  @override
  bool build() {
    return false;
  }

  toggleLoading() {
    state = !state;
  }
}
