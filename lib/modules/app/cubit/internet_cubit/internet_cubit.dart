import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hawyaty/core/enums/enum.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;

  late StreamSubscription connectivityStreamSubscription;

  bool _internetDisConnected = false;

  bool get getInternetDisConnected => _internetDisConnected;
  String _activePage = "";

  String get getActivePage => _activePage;

  InternetCubit({required this.connectivity}) : super(InternetLoading()) {
    monitorFirstStatus();
    monitorInternetConnections();
    // StreamSubscription connectivityStreamSubscription =
    //     connectivity.onConnectivityChanged.listen((connectivityResult) {
    //   if (connectivityResult == ConnectivityResult.wifi) {
    //     emitInternetConnected(ConnectionType.wifi);
    //   } else if (connectivityResult == ConnectivityResult.mobile) {
    //     emitInternetConnected(ConnectionType.mobile);
    //   } else if (connectivityResult == ConnectivityResult.none) {
    //     emitInternetDisConnected();
    //   }
    // });
  }

  Future<void> monitorFirstStatus() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      emitInternetDisConnected();
    }
    if (connectivityResult == ConnectivityResult.wifi) {
      emitInternetConnected(ConnectionType.wifi);
    } else if (connectivityResult == ConnectivityResult.mobile) {
      emitInternetConnected(ConnectionType.mobile);
    }
  }

  void setInternetDisConnected(bool value) {
    _internetDisConnected = value;
  }

  void setActivePage(String activePage) {
    _activePage = activePage;
  }

  emitInternetConnected(ConnectionType _connectionTYpe) =>
      emit(InternetConnected(connectionType: _connectionTYpe));

  emitInternetDisConnected() => emit(InternetDisConnected());

  StreamSubscription<List<ConnectivityResult>> monitorInternetConnections() {
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((List<ConnectivityResult> connectivityResults) {
      // Since it's a list, loop through the results and handle accordingly
      for (var connectivityResult in connectivityResults) {
        if (connectivityResult == ConnectivityResult.wifi) {
          emitInternetConnected(ConnectionType.wifi);
        } else if (connectivityResult == ConnectivityResult.mobile) {
          emitInternetConnected(ConnectionType.mobile);
        } else if (connectivityResult == ConnectivityResult.none) {
          emitInternetDisConnected();
        }
      }
    });
  }

  // void showInternetConnection() {
  //   _internetConnectionPageFired = true;
  // }
  //
  // void hideInternetConnection() {
  //   _internetConnectionPageFired = false;
  // }

  @override
  Future<void> close() async {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
