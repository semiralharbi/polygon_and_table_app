import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_bloc.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_event.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_state.dart';
import 'package:polygon_map_app/presentation/table_screen/widgets/table_data_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ChemicalTable extends StatelessWidget {
  const ChemicalTable({super.key});

  List<GridColumn> _buildColumns(List<int> sortedIndices) {
    return [
      GridColumn(
        columnName: 'element',
        label: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: const Text('Element'),
        ),
      ),
      ...List.generate(
        8,
        (index) => GridColumn(
          columnName: 'col${sortedIndices[index] + 1}',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text('${sortedIndices[index] + 1}'),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChemicalTableBloc, ChemicalTableState>(
      builder: (context, state) {
        if (state.sortedIndices.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return SfDataGrid(
          source: TableDataSource(
            state.elements,
            (index) =>
                context.read<ChemicalTableBloc>().add(SortRowRequested(index)),
            state.sortStates,
          ),
          frozenColumnsCount: 1,
          frozenRowsCount: 0,
          columns: _buildColumns(state.sortedIndices),
        );
      },
    );
  }
}
