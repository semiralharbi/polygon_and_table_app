import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygon_map_app/core/enums/sort_state.dart';
import 'package:polygon_map_app/data/models/chemical_element.dart';
import 'package:polygon_map_app/domain/repositories/chemical_table_repository.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_event.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_state.dart';

class ChemicalTableBloc extends Bloc<ChemicalTableEvent, ChemicalTableState> {
  final ChemicalTableRepository _repository;

  ChemicalTableBloc(this._repository) : super(const ChemicalTableState()) {
    on<LoadTableData>(_onLoadTableData);
    on<SortRowRequested>(_onSortRowRequested);
  }

  void _onLoadTableData(LoadTableData event, Emitter<ChemicalTableState> emit) {
    final elements = _repository.generateInitialData();
    emit(state.copyWith(
      elements: elements,
      originalElements: elements.map((e) => e.copy()).toList(),
      sortStates: List.filled(8, SortState.none),
      sortedIndices: List.generate(8, (index) => index),
    ));
  }

  void _onSortRowRequested(
      SortRowRequested event, Emitter<ChemicalTableState> emit) {
    final newSortStates = List<SortState>.from(state.sortStates);
    final currentState = newSortStates[event.rowIndex];

    switch (currentState) {
      case SortState.none:
        _sortAscending(event.rowIndex, emit);
        newSortStates[event.rowIndex] = SortState.ascending;
        break;
      case SortState.ascending:
        _sortDescending(event.rowIndex, emit);
        newSortStates[event.rowIndex] = SortState.descending;
        break;
      case SortState.descending:
        _resetToOriginal(emit);
        newSortStates[event.rowIndex] = SortState.none;
        break;
    }

    for (int i = 0; i < newSortStates.length; i++) {
      if (i != event.rowIndex) newSortStates[i] = SortState.none;
    }

    emit(state.copyWith(sortStates: newSortStates));
  }

  void _sortAscending(int rowIndex, Emitter<ChemicalTableState> emit) {
    final values = state.elements[rowIndex].values;
    final indexedValues = List.generate(8, (i) => MapEntry(i, values[i]));
    indexedValues.sort((a, b) => a.value.compareTo(b.value));
    final sortedIndices = indexedValues.map((e) => e.key).toList();
    _reorderColumns(sortedIndices, emit);
  }

  void _sortDescending(int rowIndex, Emitter<ChemicalTableState> emit) {
    final values = state.elements[rowIndex].values;
    final indexedValues = List.generate(8, (i) => MapEntry(i, values[i]));
    indexedValues.sort((a, b) => b.value.compareTo(a.value));
    final sortedIndices = indexedValues.map((e) => e.key).toList();
    _reorderColumns(sortedIndices, emit);
  }

  void _reorderColumns(List<int> indices, Emitter<ChemicalTableState> emit) {
    final newElements = state.elements.map((element) {
      final newValues = List<double>.filled(8, 0);
      for (int i = 0; i < 8; i++) {
        newValues[i] = element.values[indices[i]];
      }
      return ChemicalElement(name: element.name, values: newValues);
    }).toList();
    emit(state.copyWith(elements: newElements, sortedIndices: indices));
  }

  void _resetToOriginal(Emitter<ChemicalTableState> emit) {
    emit(state.copyWith(
      elements: state.originalElements.map((e) => e.copy()).toList(),
      sortedIndices: List.generate(8, (index) => index),
    ));
  }
}
