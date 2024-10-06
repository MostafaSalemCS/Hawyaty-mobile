import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'student_home_state.dart';

class StudentHomeCubit extends Cubit<StudentHomeState> {
  StudentHomeCubit() : super(StudentHomeInitial());
}
