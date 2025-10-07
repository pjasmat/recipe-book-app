import 'package:flutter/material.dart';
import '../models/recipe.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes;

  const HomeScreen({super.key, required this.recipes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Recipe Book')),
      body: ListView.separated(
        itemCount: recipes.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final r = recipes[i];
          return ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(r.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(recipe: r),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
