import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home.dart';
import 'screens/movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    if (settings.name == "/movie") {
      return MaterialPageRoute(
        builder: (context) => MoviePage(args: settings.arguments),
      );
    }
    return MaterialPageRoute(builder: (context) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: _onGenerateRoute,
        initialRoute: "/",
      ),
    );
  }
}
