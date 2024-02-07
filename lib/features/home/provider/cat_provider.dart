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
      state = state.copyWith(isLoading: true);
      final cats = await catService.getCats();
      state = state.copyWith(cats: cats, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }
}
