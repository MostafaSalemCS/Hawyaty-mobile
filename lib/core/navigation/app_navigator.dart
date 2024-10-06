import 'package:flutter/material.dart';

class AppNavigator {
  static final AppNavigator _instance = AppNavigator._();

  AppNavigator._();

  static AppNavigator get instance => _instance;

  ///GlobalKey<NavigatorState> is a special type of key that can be used to access the state of a widget across the widget tree.
  /// In the context of the Material App widget, it is used as the navigatorKey property to access the NavigatorState of the app's root navigator.
  ///  This allows you to perform navigation actions, such as pushing and popping routes, from anywhere in your app, without having to pass the BuildContext down the widget tree.
  ///Here's an example that demonstrates the usage of GlobalKey<NavigatorState> as navigatorKey in a Flutter app:
  ///
  // Create a GlobalKey<NavigatorState> instance
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Create a GlobalKey<ScaffoldMessengerState> instance
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  /* navigate to another screen using route name */
  Future<dynamic>? navigateTo(String routeName,{ Object? arguments}) =>
      navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);

  /* navigate to one step back */
  void goBack() {
    navigatorKey.currentState?.pop();
  }

  /* remove all screens from stack until we reached to mentioned route in stack  */
  void removeUntil(String routeName) {
    navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
  }

  /* Go back one step and push mentioned route in stack  */
  Future<dynamic>? removeAndPush(String routeName, Object? arguments) {
    navigatorKey.currentState?.popAndPushNamed(routeName, arguments: arguments);
  }

  /* Replace mentioned route with current route being displayed  */
  Future<dynamic>? replaceWith(String routeName, Object? arguments) {
    navigatorKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }

  /* Push mentioned route in stack and remove all routes from stack  */
  Future<dynamic>? removeAllAndNavigateTo(String routeName, Object? arguments) {
    navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(routeName, arguments: arguments, (route) => false);
  }
}
