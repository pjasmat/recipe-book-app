import 'package:flutter/material.dart';
import 'models/recipe.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = <Recipe>[
      const Recipe(
        id: 1,
        name: 'Garlic Butter Shrimp',
        ingredients: [
          '1 lb shrimp, peeled & deveined',
          '3 tbsp butter',
          '4 cloves garlic, minced',
          'Salt & pepper',
          'Lemon, parsley'
        ],
        instructions: [
          'Season shrimp.',
          'Melt butter, sauté garlic.',
          'Cook shrimp 1–2 min/side.',
          'Finish with lemon and parsley.'
        ],
      ),
      const Recipe(
        id: 2,
        name: 'Avocado Toast',
        ingredients: [
          '2 slices sourdough',
          '1 ripe avocado',
          'Lemon, salt, pepper, chili flakes'
        ],
        instructions: [
          'Toast bread.',
          'Mash avocado with lemon, salt & pepper.',
          'Spread; top with chili flakes.'
        ],
      ),
    ];

    return MaterialApp(
      title: 'Recipe Book App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 0, 255, 221),
        brightness: Brightness.light,
      ),
      home: HomeScreen(recipes: recipes),
    );
  }
}
