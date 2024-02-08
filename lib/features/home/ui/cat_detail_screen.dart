import 'package:catbreeds/features/home/models/cat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CatDetailScreen extends ConsumerStatefulWidget {
  const CatDetailScreen({required this.cat, super.key});

  static const route = '/cat-detail';
  final CatModel cat;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CatDetailScreenState();
}

class _CatDetailScreenState extends ConsumerState<CatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.cat.name)),
      body: Column(
        children: [
          if (widget.cat.img != null)
            Hero(
              tag: widget.cat.id,
              child: Image.network(widget.cat.img!, fit: BoxFit.cover),
            ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Descripción'),
                  subtitle: Text(widget.cat.description),
                ),
                ListTile(
                  title: const Text('Origen'),
                  subtitle: Text(widget.cat.origin),
                ),
                ListTile(
                  title: const Text('Temperamento'),
                  subtitle: Text(widget.cat.temperament),
                ),
                ListTile(
                  title: const Text('Adaptabilidad'),
                  subtitle: Text(widget.cat.adaptability.toString()),
                ),
                if (widget.cat.weight != null)
                  ListTile(
                    title: const Text('Peso'),
                    subtitle: Text(widget.cat.weight!),
                  ),
                ListTile(
                  title: const Text('Energía'),
                  subtitle: Text(widget.cat.energyLevel.toString()),
                ),
                ListTile(
                  title: const Text('Salud'),
                  subtitle: Text(widget.cat.healthIssues.toString()),
                ),
                ListTile(
                  title: const Text('Cuidado del pelaje'),
                  subtitle: Text(widget.cat.hairless == 0 ? 'Sin pelo' : 'Con pelo'),
                ),
                ListTile(
                  title: const Text('Tiempo de vida'),
                  subtitle: Text(widget.cat.lifeSpan ?? '-'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
