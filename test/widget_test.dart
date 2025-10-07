import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:recipe_book_app/main.dart';

void main() {
  testWidgets('user can view recipe list and favorite a recipe', (tester) async {
    await tester.pumpWidget(const RecipeBookApp());

    // Home screen renders title and at least one recipe.
    expect(find.text('My Recipe Book'), findsOneWidget);
    expect(find.text('Garlic Butter Shrimp'), findsOneWidget);
    expect(find.widgetWithIcon(ListTile, Icons.favorite_border), findsWidgets);

    // Navigate to the details page for the first recipe.
    await tester.tap(find.text('Garlic Butter Shrimp'));
    await tester.pumpAndSettle();

    // Details page shows sections and favorite action.
    expect(find.text('Ingredients'), findsOneWidget);
    expect(find.text('Instructions'), findsOneWidget);
    expect(find.text('Favorite'), findsOneWidget);

    // Favorite the recipe and return to the home screen.
    await tester.tap(find.text('Favorite'));
    await tester.pumpAndSettle();
    await tester.pageBack();
    await tester.pumpAndSettle();

    // The recipe now appears as favorited on the home list.
    expect(find.widgetWithIcon(ListTile, Icons.favorite), findsWidgets);
  });
}
