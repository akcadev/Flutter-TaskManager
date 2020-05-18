import 'package:flutter/material.dart';

import 'ui/home/HomeScreen.dart';

class Routes {
  Routes._();

  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen()
  };
}
