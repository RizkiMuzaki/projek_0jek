import 'package:flutter/material.dart';
import 'package:projek_0jek/Constant.dart';
import 'package:projek_0jek/Launcher/Launcher_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LauncherPage(),
      theme: ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: GojekPalette.green,
      ),
    );
  }
}
