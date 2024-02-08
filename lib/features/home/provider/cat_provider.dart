import 'package:catbreeds/features/home/provider/cat_state.dart';
import 'package:catbreeds/features/home/service/cat_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catProvider = StateNotifierProvider<CatsNotifier, CatState>(CatsNotifier.fromRef);

class CatsNotifier extends StateNotifier<CatState> {
  CatsNotifier(this.catService) : super(CatState.initial());

  factory CatsNotifier.fromRef(Ref ref) {
    return CatsNotifier(ref.read(catServiceProvider));
  }

  final CatService catService;

  Future<void> getCats() async {
    try {
      state = state.copyWith(cats: const AsyncValue.loading());
      final cats = await catService.getCats();
      state = state.copyWith(cats: AsyncValue.data(cats));
    } catch (e, s) {
      state = state.copyWith(cats: AsyncValue.error(e, s));
    }
  }

  void filterCats(String? filter) {
    if (filter == null) return;
    final cleanedFilter = filter.trim();
    if (cleanedFilter.isEmpty) return;
    state = state.copyWith(filter: cleanedFilter);
  }
}
