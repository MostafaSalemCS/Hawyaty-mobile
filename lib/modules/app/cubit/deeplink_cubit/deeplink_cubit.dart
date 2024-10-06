import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'deeplink_state.dart';

class DeeplinkCubit extends Cubit<DeeplinkState> {
  DeeplinkCubit() : super(DeeplinkInitial());
}
