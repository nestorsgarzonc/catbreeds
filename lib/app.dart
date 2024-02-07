import 'package:catbreeds/core/router/router.dart';
import 'package:catbreeds/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'CatBreeds',
      routerConfig: ref.read(routerProvider),
      theme: MyTheme.theme,
    );
  }
}
