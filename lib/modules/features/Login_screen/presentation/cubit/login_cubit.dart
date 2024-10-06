import 'package:bloc/bloc.dart';
import 'package:hawyaty/core/navigation/app_navigator.dart';
import 'package:hawyaty/core/router/route_names.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> initialize() async{

  }

  navigateToCustomScreen() {
    AppNavigator.instance.navigateTo(RouteNames.langScreen);
  }

  navigateToStudentHome() {
    AppNavigator.instance.navigateTo(RouteNames.studentHome);
  }

}