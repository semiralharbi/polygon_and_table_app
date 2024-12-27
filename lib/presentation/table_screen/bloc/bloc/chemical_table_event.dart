import 'package:equatable/equatable.dart';

abstract class ChemicalTableEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadTableData extends ChemicalTableEvent {}

class SortRowRequested extends ChemicalTableEvent {
  final int rowIndex;

  SortRowRequested(this.rowIndex);

  @override
  List<Object?> get props => [rowIndex];
}
