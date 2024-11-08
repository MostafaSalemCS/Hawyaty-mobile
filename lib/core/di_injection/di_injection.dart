import 'package:get_it/get_it.dart';
import 'package:hawyaty/modules/features/lesson_screen/di_injection.dart';
import 'package:hawyaty/modules/features/lo_type_screen/di_injection.dart';
import 'package:hawyaty/modules/features/unit_screen/di_injection.dart';

class DIInjection {
  final GetIt instance;

  DIInjection(this.instance) {
    DiInjectionUnitScreen(instance: instance);
    DiInjectionLessonScreen(instance: instance);
    DiInjectionLOTypeScreen(instance: instance);
  }

  Future<void> allReadyAsync() => instance.allReady();
}
