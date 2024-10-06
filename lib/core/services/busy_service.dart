import 'dart:async';
import 'package:rxdart/rxdart.dart';

class BusyService {
  int busyRequestCount = 0;

  BusyService._() {
    print('work started');
  }
  static final BusyService _singleton = BusyService._();

  static BusyService getInstance = _singleton;

  final _counterController = BehaviorSubject<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outLoadingRequestCount => _counterController.stream;

  void busy() {
    busyRequestCount++;
    _inAdd.add(busyRequestCount);
    print('busyRequestCount : $busyRequestCount');
  }

  void idle() {
    busyRequestCount--;
    _inAdd.add(busyRequestCount);
    print('busyRequestCount : $busyRequestCount');
  }

  void clearAll() {
    busyRequestCount = 0;
    _inAdd.add(busyRequestCount);
    print('All busyRequestCount cleared : $busyRequestCount');
  }
}
