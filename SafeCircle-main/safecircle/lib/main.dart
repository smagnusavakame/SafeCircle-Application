import 'package:flutter/material.dart';
import 'package:safecircle/constants/constants.dart';
import 'package:safecircle/login/login.dart';
// import 'package:safecircle/settings/settings.dart';
// import 'package:safecircle/store/store.dart';
// 
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
      title: 'Safe Circle', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kAsh),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) =>  const LoginPage(),
      },
    );
  }
}
