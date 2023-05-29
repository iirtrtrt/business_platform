import 'package:flutter/material.dart';
import 'package:tkinlv1/business.dart';
import 'package:tkinlv1/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/main': (context) => const Business(),
      },
    );
  }
}
