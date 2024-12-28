import 'package:flutter/material.dart';
import 'package:route_app/android_screen.dart';
import 'package:route_app/full_stack_screen.dart';
import 'package:route_app/home_screen.dart';
import 'package:route_app/ios_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        HomeScreen.routeNamed: (_) => HomeScreen(),
        AndroidScreen.routeNamed: (_) => AndroidScreen(),
        IosScreen.routeNamed: (_) => IosScreen(),
        FullStackScreen.routeNamed: (_) => FullStackScreen(),
      },
      initialRoute: HomeScreen.routeNamed,
    );
  }
}
