import 'package:catbreeds/features/home/models/cat_model.dart';
import 'package:catbreeds/features/home/ui/cat_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatCard extends StatelessWidget {
  const CatCard({super.key, required this.cat});

  final CatModel cat;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                cat.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () => GoRouter.of(context).pushNamed(CatDetailScreen.route, extra: cat),
                child: const Text('Más...'),
              )
            ],
          ),
          if (cat.img != null)
            Hero(
              tag: cat.id,
              child: Image.network(cat.img!, fit: BoxFit.cover, height: 200),
            ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Origen ${cat.origin}'),
              Text(cat.temperament.split(',').first),
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
