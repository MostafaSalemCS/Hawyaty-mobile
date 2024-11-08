import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'lo_viewer_state.dart';

class LoViewerCubit extends Cubit<LoViewerState> {
  LoViewerCubit() : super(LoViewerInitial());

  Future<void> initialize({required String gameObjectUrl, String? clipName}) async {
    emit(ViewerLoaded(dataSource: gameObjectUrl));
  }

  void onLoadStop() {
    emit(ViewerStopLoading());
  }

  void sendValueToLauncherPage(Map<String, dynamic> json) {
    if (json.containsKey("code") ||
        json.containsKey("totalDegree") ||
        json.containsKey("studentDegree")) {
      //lOViewerManager.inSyncClipEntity.add(json);

      return;
    }
  }
}
