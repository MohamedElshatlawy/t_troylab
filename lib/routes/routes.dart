import 'package:flutter/material.dart';

import '../Presentation/layouts/app_layout.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => AppLayout());
    }
  }
}

class Routes {
  static const homePage = '/';
}
