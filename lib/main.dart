import 'package:flutter/material.dart';
import 'package:flutterph_github_io/landing_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Philippines',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'ThemeFont',
      ),
      home: LandingPage(),
    );
  }
}
