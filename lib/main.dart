import 'package:flutter/material.dart';
import 'package:slack_stack/screens/conversation.dart';
import 'package:slack_stack/screens/home.dart';
import 'package:slack_stack/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      LoginPage.tag: (context) => LoginPage(),
      HomePage.tag: (context) => HomePage(),
      ConvoPage.tag: (context) => ConvoPage(),
    };

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
