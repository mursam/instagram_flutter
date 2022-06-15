import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.grey[900]),
      home: HomePage(),
    );
  }
}
