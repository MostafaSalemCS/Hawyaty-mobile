part of 'unit_cubit.dart';

@immutable
sealed class UnitState {}

final class UnitInitial extends UnitState {}

class UnitPointLoaded extends UnitState {
  final List<PointModel> dataSource;

  UnitPointLoaded({required this.dataSource});
}
