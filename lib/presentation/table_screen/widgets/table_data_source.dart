import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import '../../../core/enums/sort_state.dart';
import '../../../data/models/chemical_element.dart';

class TableDataSource extends DataGridSource {
  TableDataSource(this.elements, this.onRowSort, this.sortStates) {
    buildDataGridRows();
  }

  final List<ChemicalElement> elements;
  final Function(int) onRowSort;
  final List<SortState> sortStates;

  List<DataGridRow> dataGridRows = [];

  void buildDataGridRows() {
    dataGridRows = elements
        .map<DataGridRow>((element) => DataGridRow(
              cells: [
                DataGridCell<String>(
                    columnName: 'element', value: element.name),
                ...List.generate(
                  8,
                  (index) => DataGridCell<double>(
                      columnName: 'col${index + 1}',
                      value: element.values[index]),
                ),
              ],
            ))
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  Widget _getSortIcon(SortState state) {
    switch (state) {
      case SortState.ascending:
        return const Icon(Icons.arrow_upward, size: 16);
      case SortState.descending:
        return const Icon(Icons.arrow_downward, size: 16);
      case SortState.none:
        return const Icon(Icons.sort, size: 16);
    }
  }

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((cell) {
        if (cell.columnName == 'element') {
          final rowIndex = elements.indexWhere((e) => e.name == cell.value);
          return GestureDetector(
            onTap: () => onRowSort(rowIndex),
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _getSortIcon(sortStates[rowIndex]),
                  const SizedBox(width: 4),
                  Text(cell.value.toString()),
                ],
              ),
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            (cell.value as double).toStringAsFixed(2),
            style: const TextStyle(fontSize: 14),
          ),
        );
      }).toList(),
    );
  }

  @override
  bool shouldRecalculateColumnWidths() => true;
}
