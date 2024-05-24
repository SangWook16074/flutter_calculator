import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/src/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false, scaffoldBackgroundColor: Color(0xff27374d)),
      home: const App(),
    );
  }
}
