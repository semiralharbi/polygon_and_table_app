import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polygon_map_app/domain/repositories/chemical_table_repository.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_bloc.dart';
import 'package:polygon_map_app/presentation/table_screen/bloc/bloc/chemical_table_event.dart';
import 'package:polygon_map_app/presentation/table_screen/widgets/chemical_table.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChemicalTableBloc(
        ChemicalTableRepository(),
      )..add(LoadTableData()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Chemical Elements Table')),
        body: const ChemicalTable(),
      ),
    );
  }
}
