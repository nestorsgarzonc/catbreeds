import 'package:catbreeds/core/external/api_handler.dart';
import 'package:catbreeds/features/home/models/cat_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final catServiceProvider = Provider<CatService>(CatServiceImpl.fromRef);

abstract class CatService {
  Future<List<CatModel>> getCats();
}

class CatServiceImpl implements CatService {
  CatServiceImpl({required this.apiHandler});

  final ApiHandler apiHandler;

  factory CatServiceImpl.fromRef(Ref ref) {
    return CatServiceImpl(apiHandler: ref.read(apiHandlerProvider));
  }

  @override
  Future<List<CatModel>> getCats() async {
    const path = '/breeds';
    final response = await apiHandler.get(path);
    return response.responseList.map((e) => CatModel.fromMap(e)).toList();
  }
}
