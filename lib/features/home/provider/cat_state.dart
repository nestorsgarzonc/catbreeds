import 'package:catbreeds/features/home/models/cat_model.dart';
import 'package:flutter/foundation.dart';

class CatState {
  const CatState({required this.cats, required this.isLoading, required this.error});

  factory CatState.initial() {
    return const CatState(
      cats: [],
      isLoading: false,
      error: null,
    );
  }

  final List<CatModel> cats;
  final bool isLoading;
  final String? error;

  CatState copyWith({
    List<CatModel>? cats,
    bool? isLoading,
    String? error,
  }) {
    return CatState(
      cats: cats ?? this.cats,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CatState &&
        listEquals(other.cats, cats) &&
        other.isLoading == isLoading &&
        other.error == error;
  }

  @override
  int get hashCode => cats.hashCode ^ isLoading.hashCode ^ error.hashCode;
}
