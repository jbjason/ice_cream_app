import 'package:flutter/material.dart';
import 'package:ice_cream_app/constants/routes.dart';
import 'package:ice_cream_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: WelcomScreen.routeName,
    );
  }
}
