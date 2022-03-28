import 'package:flutter/material.dart';

import 'pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1': (context) => Page1Page(),
        'page2': (context) => Page2Page(),
      },
    );
  }
}