import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_tab_notifier.g.dart';

@riverpod
class SelectedTab extends _$SelectedTab {
  @override
  AsyncValue<int> build() {
    return AsyncValue.data(0); // Default to the first tab
  }

  void updateSelectedTab(int value) {
    state = AsyncValue.data(value); // Wrap the value in AsyncValue.data
  }
}
