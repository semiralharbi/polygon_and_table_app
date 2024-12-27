class ChemicalElement {
  final String name;
  final List<double> values;

  const ChemicalElement({
    required this.name,
    required this.values,
  });

  ChemicalElement copy() => ChemicalElement(
        name: name,
        values: List<double>.from(values),
      );
}
