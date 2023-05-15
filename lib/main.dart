import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_finance_flutter/home_page.dart';
import 'package:ui_finance_flutter/colors.dart' as color;

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: color.Colors.accentColor),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Finance App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
