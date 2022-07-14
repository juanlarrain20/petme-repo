import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case MeetMeScreen.routeName:
        return MeetMeScreen.route();
      case UsersScreen.routeName:
        return UsersScreen.route();
      break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('error'),
              ),
            ),
        settings: RouteSettings(name: '/error'));
  }
}
