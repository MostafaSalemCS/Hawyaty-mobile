part of 'lo_viewer_cubit.dart';

@immutable
sealed class LoViewerState {}

final class LoViewerInitial extends LoViewerState {}

class ViewerLoaded extends LoViewerState {
  final String dataSource;

  ViewerLoaded({required this.dataSource});
}

class ViewerStopLoading extends LoViewerState {}
