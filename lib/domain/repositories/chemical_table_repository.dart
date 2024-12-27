import 'dart:math';
import '../../data/models/chemical_element.dart';

class ChemicalTableRepository {
  ChemicalTableRepository();

  final List<String> _elements = [
    'Wodór',
    'Hel',
    'Lit',
    'Beryl',
    'Bor',
    'Węgiel',
    'Azot',
    'Tlen'
  ];

  List<ChemicalElement> generateInitialData() {
    final random = Random();
    return _elements.map((name) {
      return ChemicalElement(
        name: name,
        values: List.generate(
            8,
            (_) =>
                double.parse((random.nextDouble() * 100).toStringAsFixed(2))),
      );
    }).toList();
  }
}
