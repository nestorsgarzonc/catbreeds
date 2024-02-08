import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:catbreeds/features/home/models/cat_model.dart';

class CatState {
  const CatState({
    required this.cats,
    this.filter,
  });

  factory CatState.initial() {
    return const CatState(cats: AsyncValue.loading());
  }

  final AsyncValue<List<CatModel>> cats;
  final String? filter;

  List<CatModel> get filteredCats {
    if (cats.value == null) return [];
    if (filter == null) return cats.value ?? [];
    return (cats.value ?? [])
        .where((cat) => cat.name.toLowerCase().contains(filter!.toLowerCase()))
        .toList();
  }

  CatState copyWith({
    AsyncValue<List<CatModel>>? cats,
    String? filter,
  }) {
    return CatState(
      cats: cats ?? this.cats,
      filter: filter ?? this.filter,
    );
  }

  @override
  String toString() => 'CatState(cats: $cats, filter: $filter)';

  @override
  bool operator ==(covariant CatState other) {
    if (identical(this, other)) return true;

    return other.cats == cats && other.filter == filter;
  }

  @override
  int get hashCode => cats.hashCode ^ filter.hashCode;
}
