import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/models/chemical_element.dart';
import '../../../../core/enums/sort_state.dart';

part 'chemical_table_state.freezed.dart';

@freezed
class ChemicalTableState with _$ChemicalTableState {
  const factory ChemicalTableState({
    @Default([]) List<ChemicalElement> elements,
    @Default([]) List<ChemicalElement> originalElements,
    @Default([]) List<SortState> sortStates,
    @Default([]) List<int> sortedIndices,
  }) = _ChemicalTableState;
}
