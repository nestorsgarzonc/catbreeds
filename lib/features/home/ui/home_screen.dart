import 'package:catbreeds/features/home/provider/cat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatsHomeScreen extends ConsumerWidget {
  const CatsHomeScreen({super.key});

  static const route = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catState = ref.watch(catProvider);
    
    return Scaffold(
      appBar: AppBar(title: const Text('CatBreeds')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              padding: const EdgeInsets.all(12),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cat $index',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Más...'),
                        )
                      ],
                    ),
                    const FlutterLogo(
                      size: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Origen $index'),
                        Text('Peso $index'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
