import 'package:catbreeds/features/home/provider/cat_provider.dart';
import 'package:catbreeds/ui/cards/cat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatsHomeScreen extends ConsumerStatefulWidget {
  const CatsHomeScreen({super.key});

  static const route = '/home';

  @override
  ConsumerState<CatsHomeScreen> createState() => _CatsHomeScreenState();
}

class _CatsHomeScreenState extends ConsumerState<CatsHomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => ref.read(catProvider.notifier).getCats());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final catState = ref.watch(catProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('CatBreeds')),
      body: catState.cats.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (cats) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                onChanged: ref.read(catProvider.notifier).filterCats,
                onSubmitted: ref.read(catProvider.notifier).filterCats,
                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: catState.filteredCats.length,
                padding: const EdgeInsets.all(12),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                itemBuilder: (context, i) => CatCard(cat: catState.filteredCats[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
