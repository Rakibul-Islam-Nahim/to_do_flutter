import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nahim_first_kamla/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To do App',
      home: Home(),
    );
  }
}
