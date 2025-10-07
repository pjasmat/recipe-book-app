class Recipe {
  final int id;
  final String name;
  final List<String> ingredients;
  final List<String> instructions;

  const Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
  });
}
