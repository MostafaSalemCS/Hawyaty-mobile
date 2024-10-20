import 'package:get_it/get_it.dart';
import 'package:hawyaty/modules/features/lesson_screen/di_injection.dart';
import 'package:hawyaty/modules/features/unit_screen/di_injection.dart';

final GetIt serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  DiInjectionUnitScreen(instance: serviceLocator);
  DiInjectionLessonScreen(instance: serviceLocator);
}
