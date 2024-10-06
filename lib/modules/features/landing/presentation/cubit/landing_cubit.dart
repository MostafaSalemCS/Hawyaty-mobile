import 'package:bloc/bloc.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:meta/meta.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit() : super(LandingInitial());

  void navigateToLoginPage(){
    AppNavigator.instance.navigateTo(RouteNames.loginScreen);
  }

}
