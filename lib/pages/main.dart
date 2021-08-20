import 'package:flutter/material.dart';

import 'Home_page.dart';
import 'Login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
     //RinitialRoute: "/home",
      routes: {
        //"/":(context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/Login": (context) => LoginPage()
      },
    );
  }
}
